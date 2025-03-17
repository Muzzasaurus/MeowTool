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
hoverFill = global.guiMainHoverFillColor
#define Step_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
hover = point_in_rectangle(mouse_xfixed, mouse_y, x, y, x+width, y+height)
#define Trigger_Draw GUI Element
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var oldFill; oldFill = fillColor

if (hover) fillColor = hoverFill
event_inherited()
fillColor = oldFill

draw_set_color(lineColor)
drawTextBox(x, y, width, height, label, fa_center, fa_center)

draw_reset()
