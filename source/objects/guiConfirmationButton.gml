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
confirmationState = 0
timeout = 75
curTime = 0
#define Step_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=902
applies_to=self
invert=0
arg0=guiElement
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (curTime >= timeout) {
    confirmationState = 0
    label = oldLabel
}

if (hover) {
    if (mouse_check_button_pressed(mb_left)) {
        primed = true
    }

    if (mouse_check_button_released(mb_left) and primed) {
        primed = false
        if (confirmationState == 1) guiButtonClick(clickAction)
        else {
            confirmationState = 1
            oldLabel = label
            label = "Are you sure?"
            curTime = 0
        }
    }
} else {
    primed = false
}

if (confirmationState == 1)
    curTime += 1
#define Trigger_Draw GUI Element
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var oldFill; oldFill = fillColor
var oldLine; oldLine = lineColor

if (confirmationState == 0) {
    if (hover) fillColor = hoverFill
    if (primed) fillColor = primedFill
} else {
    fillColor = $6767FF
    lineColor = 000098
    //if (hover)  fillColor = $3A3A91
    if (primed) fillColor = $3030FF
}
event_inherit_object(guiElement)

draw_set_color(lineColor)
drawTextBox(x, y, width, height, label, fa_center, fa_center)

fillColor = oldFill
lineColor = oldLine
draw_reset()
