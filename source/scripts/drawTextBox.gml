///drawTextBox(x,y,w,h,text,halign,valign)

var bx, by, bw, bh, text, halign, valign;
bx = argument0
by = argument1
bw = argument2
bh = argument3
text = argument4
halign = argument5
valign = argument6

var tx, ty;
tx = bx
ty = by

if (halign == fa_center)
    tx = bx + bw / 2
else if (halign == fa_right)
    tx = bx + bw

if (valign == fa_center)
    ty = by + bh / 2
else if (valign == fa_bottom)
    ty = by + bh

draw_set_halign(halign)
draw_set_valign(valign)

draw_text(tx, ty, text)
