"""Append constants to an apktool-decoded Java enum smali file.

usage: enum_add.py <file.smali> NAME [NAME ...]
New constants get ordinals after the existing ones; field name == constant name.
"""
import re, sys

path = sys.argv[1]
new = sys.argv[2:]
src = open(path, encoding="utf-8").read()
cls = re.search(r"^\.class [^\n]*? (L[^;\s]+;)", src, re.M).group(1)

# --- existing constants: (ordinal, field) from <clinit>
ci = src.index(".method static constructor <clinit>()V")
ce = src.index(".end method", ci)
clinit = src[ci:ce]
consts = []
pat = re.compile(
    r'const-string(?:/jumbo)? (v\d+), "((?:[^"\\]|\\.)*)"\s+'
    r"const(?:/4|/16)? (v\d+), (-?0x[0-9a-f]+)\s+"
    r"invoke-direct \{(v\d+), \1, \3\}, " + re.escape(cls) + r"-><init>\(Ljava/lang/String;I\)V\s+"
    r"sput-object \5, " + re.escape(cls) + r"->(\w+):" + re.escape(cls)
)
for m in pat.finditer(clinit):
    consts.append((int(m.group(4), 16), m.group(6), m.group(2)))
consts.sort()
assert [c[0] for c in consts] == list(range(len(consts))), consts
existing_names = {c[2] for c in consts}
for n in new:
    if n in existing_names:
        sys.exit(f"{n} already present in {path}")

vf = re.search(r"\.field public static final synthetic (\w+):\[" + re.escape(cls), src).group(1)

# --- fields
fields = "".join(f".field public static final enum {n}:{cls}\n\n" for n in new)
anchor = f".field public static final synthetic {vf}:[{cls}"
src = src.replace(anchor, fields + anchor, 1)

# --- clinit creation, inserted before the values-array build call
start = len(consts)
code = ""
for i, n in enumerate(new):
    code += (
        f"    new-instance v0, {cls}\n\n"
        f'    const-string v1, "{n}"\n\n'
        f"    const/16 v2, {hex(start + i)}\n\n"
        f"    invoke-direct {{v0, v1, v2}}, {cls}-><init>(Ljava/lang/String;I)V\n\n"
        f"    sput-object v0, {cls}->{n}:{cls}\n\n"
    )
ci = src.index(".method static constructor <clinit>()V")
ce = src.index(".end method", ci)
clinit = src[ci:ce]
call = re.search(r"    invoke-static \{\}, " + re.escape(cls) + r"->(\w+)\(\)\[" + re.escape(cls) + r"\s+move-result-object v0\s+sput-object v0, " + re.escape(cls) + "->" + vf, clinit)
assert call, "values build call not found"
builder = call.group(1)
clinit2 = clinit[:call.start()] + code + clinit[call.start():]
clinit2 = re.sub(r"\.locals (\d+)", lambda m: f".locals {max(3, int(m.group(1)))}", clinit2, count=1)
src = src[:ci] + clinit2 + src[ce:]

# --- rebuild the synthetic values builder
allf = [c[1] for c in consts] + new
body = (
    f"    .locals 3\n\n    const/16 v0, {hex(len(allf))}\n\n    new-array v0, v0, [{cls}\n\n"
)
for i, f in enumerate(allf):
    body += f"    sget-object v1, {cls}->{f}:{cls}\n\n    const/16 v2, {hex(i)}\n\n    aput-object v1, v0, v2\n\n"
body += "    return-object v0\n"
m = re.search(r"(\.method public static synthetic " + builder + r"\(\)\[" + re.escape(cls) + r"\n)(.*?)(\.end method)", src, re.S)
assert m, "builder method not found"
src = src[:m.start(2)] + body + src[m.end(2):]
open(path, "w", encoding="utf-8", newline="\n").write(src)
print(f"{path}: {len(consts)} -> {len(allf)} constants (values field {vf}, builder {builder})")
