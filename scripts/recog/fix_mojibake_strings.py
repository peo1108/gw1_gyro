"""Repair strings.xml files that were double-encoded by a PowerShell Set-Content pass.

The file was decoded as Windows-1252 (with the five undefined 0x80..0x9F slots falling back to
the C1 control characters U+0081 etc.) and then written back as UTF-8. Every non-ASCII
character therefore stores the UTF-8 encoding of its cp1252 byte:

    "Chỉ đường về nhà"  ->  "Chá»‰ Ä‘Æ°á»ng vá» nhÃ "

Repair: turn each character back into the single byte it came from, then decode those bytes as
UTF-8. Strings that are already correct cannot be turned back into bytes that form valid UTF-8,
so they are left untouched, which makes the pass safe to run repeatedly.

usage: python scripts/recog/fix_mojibake_strings.py <build_dir> [--dry]
"""
import glob
import os
import re
import sys

# Windows-1252 places these at 0x80..0x9F instead of the C1 controls.
SPECIAL = {
    "\u20ac": 0x80, "\u201a": 0x82, "\u0192": 0x83, "\u201e": 0x84, "\u2026": 0x85,
    "\u2020": 0x86, "\u2021": 0x87, "\u02c6": 0x88, "\u2030": 0x89, "\u0160": 0x8a,
    "\u2039": 0x8b, "\u0152": 0x8c, "\u017d": 0x8e, "\u2018": 0x91, "\u2019": 0x92,
    "\u201c": 0x93, "\u201d": 0x94, "\u2022": 0x95, "\u2013": 0x96, "\u2014": 0x97,
    "\u02dc": 0x98, "\u2122": 0x99, "\u0161": 0x9a, "\u203a": 0x9b, "\u0153": 0x9c,
    "\u017e": 0x9e, "\u0178": 0x9f,
}


def unbyte(text):
    out = bytearray()
    for ch in text:
        o = ord(ch)
        if o < 0x100:
            out.append(o)
        elif ch in SPECIAL:
            out.append(SPECIAL[ch])
        else:
            raise ValueError("not a cp1252 byte stream")
    return bytes(out)


def repair(text):
    try:
        return unbyte(text).decode("utf-8")
    except (ValueError, UnicodeDecodeError):
        return text


def main():
    build = sys.argv[1]
    dry = "--dry" in sys.argv
    files = sorted(glob.glob(os.path.join(build, "res", "values*", "strings.xml")))
    total = 0

    for p in files:
        s = open(p, "rb").read().decode("utf-8-sig")
        count = [0]

        def sub(m):
            body = m.group(2)
            fixed = repair(body)
            if fixed != body:
                count[0] += 1
                return m.group(1) + fixed + m.group(3)
            return m.group(0)

        s2 = re.sub(r"(<string\b[^>]*>)(.*?)(</string>)", sub, s, flags=re.S)
        rel = os.path.relpath(p, build)
        if count[0]:
            total += count[0]
            print("%-40s fixed %4d%s" % (rel, count[0], " (dry)" if dry else ""))
            if not dry:
                with open(p, "w", encoding="utf-8", newline="") as f:
                    f.write(s2)
        else:
            print("%-40s clean" % rel)

    print("total repaired:", total)
    if not dry:
        # second pass must find nothing; report if it would
        for p in files:
            s = open(p, "rb").read().decode("utf-8-sig")
            left = sum(1 for m in re.finditer(r"<string\b[^>]*>(.*?)</string>", s, re.S)
                       if repair(m.group(1)) != m.group(1))
            if left:
                print("STILL BAD:", os.path.relpath(p, build), left)


if __name__ == "__main__":
    main()