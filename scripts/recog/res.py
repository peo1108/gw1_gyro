import re, sys
sys.stdout.reconfigure(encoding="utf-8")


def sx(s):
    return "".join(chr(ord(c) ^ (((i * 109) + 90) & 255)) for i, c in enumerate(s))


def jd(s):
    return re.sub(r"\\u([0-9a-fA-F]{4})", lambda m: chr(int(m.group(1), 16)), s)


for line in open(sys.argv[1], encoding="utf-8"):
    m = re.search(r'I5\.b\.a\((\S+), (\d+), f49213h, Sx\.a\("(.*)"\)\);', line)
    if m:
        print(sx(jd(m.group(3))), m.group(1), m.group(2))
