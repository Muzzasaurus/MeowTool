#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=605
invert=0
arg0=this is the box for a checkbox,
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=605
invert=0
arg0=use guiCreateCheckBox if you want to make a checkbox
*/
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

activatedFill= $f8a6ff
activated = false

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

if (isGlobal) {
    activated = variable_global_get()
}
#define Trigger_Draw GUI Element
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var oldFill; oldFill = fillColor

if (activated) fillColor = activatedFill
//if (hover) fillColor = hoverFill
//if (primed) fillColor = primedFill
event_inherited()
fillColor = oldFill

draw_set_color(lineColor)
draw_line(x, y+height/2, x+width/2, y+height)
draw_line(x+width/2, y+height, x+width, y

draw_reset()
