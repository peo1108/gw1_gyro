import re, sys
sys.stdout.reconfigure(encoding="utf-8")

ESC = {"t": "\t", "n": "\n", "r": "\r", "b": "\b", "f": "\f", "'": "'", '"': '"', "\\": "\\"}


def unesc(s):
    def rep(g):
        e = g.group(1)
        if e[0] == "u" and len(e) == 5:
            return chr(int(e[1:], 16))
        return ESC.get(e, e)
    return re.sub(r"\\(u[0-9a-fA-F]{4}|.)", rep, s)


def sx(s):
    return "".join(chr(ord(c) ^ (((i * 109) + 90) & 255)) for i, c in enumerate(s))


txt = open(sys.argv[1], encoding="utf-8").read()
clinit = txt[txt.find(".method static constructor <clinit>()V"):]
clinit = clinit[:clinit.find(".end method")]
names = [sx(unesc(m.group(1))) for m in re.finditer(r'const-string(?:/jumbo)? v\d+, "((?:[^"\\]|\\.)*)"', clinit)]
print(" ".join(f"{i}:{n}" for i, n in enumerate(names)))
