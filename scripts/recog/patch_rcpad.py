"""pubg/g.smali: pad recoil_data with deep copies (mdm.RcPad.copy) instead of the shared record 0."""
import sys

P = f"{sys.argv[1]}/smali/com/zjx/jyandroid/Extensions/pubg/g.smali"
s = open(P, encoding="utf-8").read()
old = """    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Ljava/util/Map;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
"""
new = """    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    invoke-static {v5}, Lmdm/RcPad;->copy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
"""
assert "Lmdm/RcPad;" not in s, "already patched"
assert s.count(old) == 1, f"anchor found {s.count(old)} times"
s = s.replace(old, new)
open(P, "w", encoding="utf-8", newline="\n").write(s)
print("g.smali padding now deep-copies")
