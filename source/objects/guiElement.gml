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

fillColor = global.guiMainFillColor
lineColor = global.guiMainLineColor
hasFill   = true
hasLine   = true

hover = false
hoverable = false

//mouseOver is true when the element contains a hovered element
mouseOver = false

//guh
isSidebar = false
#define Step_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
hover = global.guiMouseHovering == id
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (parent != noone) exit

global.guiElementDepth = 0
with (all) __guiDrawChildren_ran = false
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

    if (isSidebar)
        draw_line(x, y, x, y+height+1)
    else
        draw_rectangle(x, y, x+width, y+height, true)
}

draw_reset()
