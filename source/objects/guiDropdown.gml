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
//some notes on the dropdown system (i made it be nicely formatted, so you know its legit)
/*
    the items inside of a dropdown list are not instances; they are just items in multiple list
    data structures. this is to save on memory and performance.

    you might be wondering why this isnt using the fancy linking system i set up, and the reason
    why i didnt just use that is because it would create WAY too many ds_lists, and i just think
    that it isnt needed for something like this.
*/

itemLabels = ds_list_create()
itemTypes = ds_list_create()
itemGetters = ds_list_create()
itemSetters = ds_list_create()

itemStates = ds_list_create()

hoverable = true
hoveredItem = -1
#define Destroy_0
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
///bye bye lists

ds_list_destroy(itemTypes)
ds_list_destroy(itemLabels)
ds_list_destroy(itemGetters)
ds_list_destroy(itemSetters)
ds_list_destroy(itemStates)
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
draw_set_font(fntGuiRegular)
var h; h = string_height("h")

hoveredItem = -1
if (hover) {
    var yy; yy = 0
    for (i=0; i < ds_list_size(itemLabels); i+=1) {
        if (global.guiMouseHoveringY > yy and global.guiMouseHoveringY < yy + h+6) {
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
                }
            }
            hoveredItem = i
            break
        }
        yy += h + 6
    }
}
#define Trigger_Draw GUI Element
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//feel
if (hasFill) {
    draw_set_color(fillColor)
    draw_rectangle(x, y, x+width, y+height, false)
}


//drawing the labels
draw_set_font(fntGuiRegular)

var dy; dy = 0
var h; h = string_height("h")

draw_set_color(lineColor)
draw_set_halign(fa_right)
for (i=0; i < ds_list_size(itemLabels); i+=1) {
    if (i == hoveredItem) {
        draw_rect(x, y + dy, width, h + 6, global.guiMainHoverFillColor)
    }
    draw_text(x + width - 3, y + dy + 3, ds_list_find_value(itemLabels, i))
    if (ds_list_find_value(itemTypes, i) == "toggle") {
        guiDrawBool(guiGetThing(ds_list_find_value(itemGetters, i)), x + 3, y + 3, h, h)
    }
    dy += h + 6
}


//outline!!!

if (hasLine) {
    draw_set_color(lineColor)
    draw_rectangle(x, y, x+width, y+height, true)
}

draw_reset()
