"""Add gg2's new weapons/attachments to pubg/c.smali <clinit>: display names + category sets."""
import sys

B = sys.argv[1]
P = f"{B}/smali/com/zjx/jyandroid/Extensions/pubg/c.smali"
C = "Lcom/zjx/jyandroid/Extensions/pubg/c"
s = open(P, encoding="utf-8").read()
assert "->ABAKAN:" not in s, "already patched"

# string resource ids added to public.xml by patch_res.py
STR = {"grip_ergonomic": 0x7F1103A8, "muzzle_brake": 0x7F1103A9,
       "muzzle_extender": 0x7F1103AA, "stock_heavy": 0x7F1103AB}

code = []


def put_res(mapf, enum, field, rid):
    code.append(f"""    sget-object v0, {C};->{mapf}:Ljava/util/Map;

    sget-object v2, {C}${enum};->{field}:{C}${enum};

    const v3, {hex(rid)}

    invoke-static {{v3}}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {{v0, v2, v3}}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
""")


def put_str(mapf, field, text):
    code.append(f"""    sget-object v0, {C};->{mapf}:Ljava/util/Map;

    sget-object v2, {C}$l;->{field}:{C}$l;

    const-string v3, "{text}"

    invoke-interface {{v0, v2, v3}}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
""")


def set_op(setf, field, op):
    code.append(f"""    sget-object v0, {C};->{setf}:Ljava/util/Set;

    sget-object v2, {C}$l;->{field}:{C}$l;

    invoke-interface {{v0, v2}}, Ljava/util/Set;->{op}(Ljava/lang/Object;)Z
""")


# attachment names (c = muzzle map, d = grip map, e = stock map)
put_res("c", "d", "BRAKE", STR["muzzle_brake"])
put_res("c", "d", "EXTENDER", STR["muzzle_extender"])
put_res("d", "c", "ERGONOMIC", STR["grip_ergonomic"])
put_res("e", "h", "HEAVY", STR["stock_heavy"])

# weapon names, CN map a and global map b (as gg2)
for f, name in [("ABAKAN", "ABAKAN"), ("M338", "M338"), ("MP7", "MP7"), ("AS50", "AS50"), ("MG97", "97MG")]:
    put_str("a", f, name)
    put_str("b", f, name)

# category sets: i/j/k = CN muzzle/grip/stock, l/m/n = global muzzle/grip/stock (from gg2)
SETS = {
    "ABAKAN": "ikln", "M338": "ikln", "MP7": "ij", "AS50": "kln", "MG97": "ijlm",
}
for f, sets in SETS.items():
    for st in sets:
        set_op(st, f, "add")
# gg2 changes to existing guns on global builds: M1 (field i0) takes muzzle+stock, MG36 (e0) no muzzle
set_op("l", "i0", "add")
set_op("n", "i0", "add")
set_op("l", "e0", "remove")

block = "\n".join(code) + "\n"
ci = s.index(".method static constructor <clinit>()V")
ce = s.index(".end method", ci)
rv = s.rindex("    return-void", ci, ce)
s = s[:rv] + block + s[rv:]
open(P, "w", encoding="utf-8", newline="\n").write(s)
print(f"inserted {len(code)} statements into c.<clinit>")
