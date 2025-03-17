#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
children = ds_list_create()
parent   = noone

width  = 32
height = 32

fillColor = c_white
lineColor = c_black
hasFill   = true
hasLine   = true
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (parent != noone) exit

event_perform(ev_trigger, tr_element_draw)
guiDrawChildren()
#define Trigger_Draw GUI Element
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (hasFill) {
    draw_set_color(fillColor)
    draw_rectangle(x, y, x+width, y+height, false)
}

if (hasLine) {
    draw_set_color(lineColor)
    draw_rectangle(x, y, x+width, y+height, true)
}

draw_reset()
