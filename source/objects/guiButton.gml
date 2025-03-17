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
primedFill = global.guiMainPrimedFillColor

clickAction = ""

primed = false

hoverable = true
#define Step_1
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
if (hover) {
    if (mouse_check_button_pressed(mb_left)) {
        primed = true
    }

    if (mouse_check_button_released(mb_left) and primed) {
        primed = false
        guiButtonClick(clickAction)
    }
} else {
    primed = false
}
#define Trigger_Draw GUI Element
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var oldFill; oldFill = fillColor

if (hover) fillColor = hoverFill
if (primed) fillColor = primedFill
event_inherited()
fillColor = oldFill

draw_set_color(lineColor)
drawTextBox(x, y, width, height, label, fa_center, fa_center)

draw_reset()
