#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=604
invert=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
label = "This is a button."
font = fntGuiRegular
halign = fa_center
valign = fa_center
#define Trigger_Draw GUI Element
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_color(lineColor)
draw_set_font(font)
drawTextBox(x, y, width, height, label, halign, valign)

draw_reset()
