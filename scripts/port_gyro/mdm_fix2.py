import sys
from PIL import Image
B, LOGO = sys.argv[1], sys.argv[2]
# recolor add icon: keep alpha/shape, map bluish fill -> gold, white stays white-ish (on_gold dark)
p = B + "/res/drawable/main_page_view_add_icon.png"
im = Image.open(p).convert("RGBA"); px = im.load()
for y in range(im.height):
    for x in range(im.width):
        r, g, b, a = px[x, y]
        if a == 0: continue
        if b > 200 and r > 200 and g > 200:   # white plus sign -> dark
            px[x, y] = (0x1a, 0x14, 0x0a, a)
        else:
            px[x, y] = (0xd4, 0xb4, 0x7a, a)
im.save(p)
# transparent-background logo for the main page
src = Image.open(B + "/res/drawable/app_logo_1024.png").convert("RGB")
im = Image.open(LOGO).convert("RGB")
g = im.convert("L").point(lambda v: 255 if v > 45 else 0)
x0, y0, x1, y1 = g.getbbox(); cx, cy = (x0+x1)/2, (y0+y1)/2; h = max(x1-x0, y1-y0)*1.04/2
im = im.crop((int(cx-h), int(cy-h), int(cx+h), int(cy+h))).resize((512, 512), Image.LANCZOS)
L = im.convert("L")
alpha = L.point(lambda v: 0 if v < 18 else min(255, int((v-18)*255/50)))
# un-premultiply against black so edges are not darkened
rgba = Image.new("RGBA", im.size)
ip, ap, op = im.load(), alpha.load(), rgba.load()
for y in range(512):
    for x in range(512):
        a = ap[x, y]
        if a == 0: op[x, y] = (0, 0, 0, 0); continue
        r, g_, b = ip[x, y]; k = 255 / a
        op[x, y] = (min(255, int(r*k)), min(255, int(g_*k)), min(255, int(b*k)), a)
rgba.save(B + "/res/drawable/mdm_logo.png", optimize=True)
print("ok")
