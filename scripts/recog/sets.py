"""Compute weapon -> category-set membership from a jadx pubg/c.java static block."""
import re, sys
sys.stdout.reconfigure(encoding="utf-8")

src = open(sys.argv[1], encoding="utf-8").read()
fieldmap = {}
if len(sys.argv) > 2:  # gg2: map obfuscated field suffix -> real name
    for line in open(sys.argv[2], encoding="utf-8"):
        i, f, n = line.split()
        fieldmap[f] = n

var = {}
setvar = {}
members = {}
for line in src.splitlines():
    m = re.search(r"l (lVar\d*) = l\.(\w+);", line)
    if m:
        name = m.group(2)
        if fieldmap:
            suf = re.sub(r"^f\d+", "", name)
            name = fieldmap.get(suf, name)
        var[m.group(1)] = name
    m = re.search(r"Set<l> (set\d+) = (\w+);", line)
    if m:
        setvar[m.group(1)] = m.group(2)
    m = re.search(r"(\w+)\.add\((lVar\d*)\);", line)
    if m:
        s = setvar.get(m.group(1), m.group(1))
        members.setdefault(s, set()).add(var.get(m.group(2), m.group(2)))
for s in sorted(members):
    print(s, len(members[s]), " ".join(sorted(members[s])))
