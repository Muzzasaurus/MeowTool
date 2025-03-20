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
associatedVar = ""
associatedObj = noone
isGlobal = false

save = false
saveKey = ""

activatedFill = $f8a6ff
//NOTE: activatedLine is only used for the checkmark
activatedLine = lineColor
activated = false

label = ""
labelHalign = fa_left


hoverable = true
primed = false
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
if (isGlobal) {
    activated = variable_global_get(associatedVar)
} else {
    with (associatedObj)
        other.activated = variable_local_get(other.associatedVar)
}

if (hover) {
    if (mouse_check_button_pressed(mb_left)) {
        primed = true
    }

    if (mouse_check_button_released(mb_left) and primed) {
        primed = false
        if (isGlobal) {
            variable_global_set(associatedVar, !activated)
            if (save)
                savedatap(saveKey, variable_global_get(associatedVar))
        } else {
            with (associatedObj) {
                variable_local_set(other.associatedVar, not other.activated)
                if (other.save)
                    savedatap(other.saveKey, not other.activated)
            }
        }

        activated = !activated
    }
} else {
    primed = false
}
#define Step_2
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
width = 16
height = 16
#define Trigger_Draw GUI Element
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var oldFill; oldFill = fillColor

if (activated) fillColor = activatedFill
//if (hover) fillColor = hoverFill
if (primed || hover) {
    var h, s, v;
    h = color_get_hue(fillColor)
    s = color_get_saturation(fillColor)
    v = color_get_value(fillColor)

    if (primed)
        fillColor = make_color_hsv(h, max(0, s - 16), min(255, v + 16))
    else
        fillColor = make_color_hsv(h, s, max(0, v - 16))
}
event_inherited()
fillColor = oldFill

/*
var pad; pad = 2
x+=pad
y+=pad
width-=pad*2
height-=pad*2
if (activated) {
    draw_set_color(activatedLine)
    draw_line(x, y+height/2, x+width/2, y+height)
    draw_line(x+width/2, y+height, x+width, y)
} else {
    draw_set_color(lineColor)
    draw_line(x, y, x+width, y+height)
    draw_line(x+width, y, x, y+height)
}
x-=pad
y-=pad
width+=pad*2
height+=pad*2
*/

/* just gonna keep this here
if (activated) {
    draw_set_color(activatedLine)
    draw_line_width(x, y+height/2, x+width/2, y+height, 1)
    draw_line_width(x+width/2, y+height, x+width, y, 1)
} else {
    draw_set_color(lineColor)
    draw_line_width(x, y, x+width, y+height, 1)
    draw_line_width(x+width, y, x, y+height, 1)
}
*/

draw_sprite(sprGuiCheckBoxIcon, activated, x+2, y+2)

draw_set_color(lineColor)
draw_set2(labelHalign, fa_center)
if (labelHalign == fa_left)
    draw_text(x+width + 3, y + height/2, label)
else
    draw_text(x - 3, y + height/2, label)

draw_reset()
