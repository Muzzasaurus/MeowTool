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

save = false
saveKey = ""

activatedFill = $f8a6ff
//NOTE: activatedLine is only used for the checkmark
activatedLine = lineColor
activated = false

label = ""
labelHalign = fa_left
labelPadding = 4


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
if (associatedObj == noone) {
    activated = getVar(associatedVar)
} else {
    activated = getVar(associatedVar, associatedObj)
}

if (hover) {
    if (mouse_check_button_pressed(mb_left)) {
        primed = true
    }

    if (mouse_check_button_released(mb_left) and primed) {
        primed = false
        activated = !activated
        if (associatedObj == noone) {
            activated = setVar(activated, associatedVar)
        } else {
            activated = setVar(activated, associatedVar, associatedObj)
        }

        if (save)
            savedatap(saveKey, activated)
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
draw_set_font(fntGuiRegular)
if (labelHalign == fa_left)
    draw_text(x+width + labelPadding, y + height/2, label)
else
    draw_text(x - labelPadding, y + height/2, label)

draw_reset()
