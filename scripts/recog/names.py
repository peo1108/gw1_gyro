"""Print gg2 pubg/c display-name map puts with decoded Sx strings and real enum names."""
import re, sys
sys.stdout.reconfigure(encoding="utf-8")


def sx(s):
    return "".join(chr(ord(c) ^ (((i * 109) + 90) & 255)) for i, c in enumerate(s))


def jdec(s):  # java source escapes
    return re.sub(r"\\u([0-9a-fA-F]{4})", lambda m: chr(int(m.group(1), 16)), s).replace('\\"', '"').replace("\\\\", "\\")


src = open(sys.argv[1], encoding="utf-8").read()
fm = {}
for line in open(sys.argv[2], encoding="utf-8"):
    i, f, n = line.split()
    fm[f] = n
var = {}
for line in src.splitlines():
    m = re.search(r"l (lVar\d*) = l\.(\w+);", line)
    if m:
        var[m.group(1)] = fm.get(re.sub(r"^f\d+", "", m.group(2)), m.group(2))
    m = re.search(r"(f4920[67][ab])\.put\((?:l\.)?(\w+), (.*)\);", line)
    if m:
        key = m.group(2)
        key = var.get(key, fm.get(re.sub(r"^f\d+", "", key), key))
        val = re.sub(r'Sx\.a\("((?:[^"\\]|\\.)*)"\)', lambda g: '"' + sx(jdec(g.group(1))) + '"', m.group(3))
        print(m.group(1)[-1], key, val)
