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
hpad = 8
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=604
invert=0
*/
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
if (!instance_exists(dropdownParent) and dropdownParent != noone) {
    instance_destroy()
    exit
}

var dropdownHover; dropdownHover = guiDropdownGetHovered()

if (dropdownParent != noone) {
    //print(dropdownHover)
}

draw_set_font(fntGuiSmall)
var h; h = string_height("h")

hoveredItem = -1
if (hover) {
    var xx; xx = 0
    for (i=0; i < ds_list_size(itemLabels); i+=1) {
        var w; w = string_width(ds_list_find_value(itemLabels, i))
        if (global.guiMouseHoveringX > xx and global.guiMouseHoveringX < xx + w + hpad * 2) {
            if (mouse_check_button_pressed(mb_left)) {
                switch (ds_list_find_value(itemTypes, i)) {
                    case "bool":
                    case "toggle": {
                        guiSetThing(ds_list_find_value(itemSetters, i), !guiGetThing(ds_list_find_value(itemGetters, i)))
                    } break
                    case "action":
                    case "button": {
                        guiButtonClick(guiGetThing(ds_list_find_value(itemGetters, i)))
                    } break
                    case "dropdown": {
                        with (dropdownChild) instance_destroy()
                        dropdownChild = script_execute(ds_list_find_value(itemGetters, i), (screenX + xx + w + hpad * 2) - 150, y+height)
                        dropdownChild.halign = fa_right
                        dropdownChild.dropdownParent = id
                        dropdownChildItem = i
                    } break
                }
            }
            hoveredItem = i
            break
        }
        xx += w + hpad * 2
    }
}

/*
if (dropdownChild != noone) {
    hoveredItem = dropdownChildItem
}
*/

if (not dropdownHover) {
    closeTimer += 1
} else {
    closeTimer = 0
}
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_font(fntGuiSmall)
var h; h = string_height("h")

height = h + vpad * 2
#define Trigger_Draw GUI Element
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//feel
if (hasFill) {
    draw_rect(x, y, width, height, fillColor)
}


//drawing the labels
draw_set_font(fntGuiSmall)

var dx; dx = hpad

draw_set_color(lineColor)
for (i=0; i < ds_list_size(itemLabels); i+=1) {
    var label; label = ds_list_find_value(itemLabels, i)
    var w; w = string_width(label)
    if (i == hoveredItem) {
        draw_rect(dx - hpad, y, w + hpad*2, height, global.guiMainHoverFillColor)
    }
    draw_text(x + dx, y + vpad, label)
    dx += w + hpad*2
}


//outline!!!

if (hasLine) {
    draw_rect_line(x, y, width, height, lineColor)
}

draw_reset()
