"""Repair any UTF-8 text file that a PowerShell Set-Content pass double-encoded.

Same reversal as fix_mojibake_strings.py, but for whole files (README, .md, .txt):
each character is turned back into the single cp1252 byte it came from and the bytes
are decoded as UTF-8. Text that is already correct cannot make that trip, so it is
left alone and the command is safe to re-run.

usage: python scripts/recog/fix_mojibake_text.py <file> [more files ...] [--dry]
"""
import sys

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
            raise ValueError("not a cp1252 byte")
    return bytes(out)


def repair_line(line):
    # Only touch lines that actually carry the margin bytes; anything else stays as written.
    if not any(ord(c) > 0x9f for c in line):
        return line
    try:
        return unbyte(line).decode("utf-8")
    except (ValueError, UnicodeDecodeError):
        return line


def main():
    args = [a for a in sys.argv[1:] if a != "--dry"]
    dry = "--dry" in sys.argv
    for p in args:
        s = open(p, "rb").read().decode("utf-8-sig")
        out = "\n".join(repair_line(ln) for ln in s.split("\n"))
        changed = out != s
        print("%-30s %s" % (p, "repaired" if changed else "clean"))
        if changed and not dry:
            with open(p, "w", encoding="utf-8", newline="") as f:
                f.write(out)


if __name__ == "__main__":
    main()