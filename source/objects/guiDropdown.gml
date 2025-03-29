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

halign = fa_left

vpad = 2

dropdownChild = noone
dropdownChildItem = -1
dropdownParent = noone
closeTimer = 0

hoveredItem = -2

timeToClose = 25
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

with (dropdownParent) {
    dropdownChild = noone
}
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
    var yy; yy = 0
    for (i=0; i < ds_list_size(itemLabels); i+=1) {
        if (global.guiMouseHoveringY > yy and global.guiMouseHoveringY < yy + h+vpad*2) {
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
                        if (halign == fa_left)
                            dropdownChild = script_execute(ds_list_find_value(itemGetters, i), x + width, y+yy)
                        else
                            dropdownChild = script_execute(ds_list_find_value(itemGetters, i), x - 150, y+yy)

                        dropdownChild.halign = halign
                        dropdownChild.dropdownParent = id
                        dropdownChildItem = i
                    } break
                }
            }
            hoveredItem = i
            break
        }
        yy += h + vpad * 2
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

if (closeTimer >= timeToClose) {
    instance_destroy()
}
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_font(fntGuiSmall)
var h; h = string_height("h")

height = (h + vpad * 2) * ds_list_size(itemLabels)
width = 150
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

var dy; dy = 0
var h; h = string_height("h")

draw_set_color(lineColor)
draw_set_halign(halign)
for (i=0; i < ds_list_size(itemLabels); i+=1) {
    if (i == hoveredItem) {
        draw_rect(x, y + dy, width, h + vpad*2, global.guiMainHoverFillColor)
    }

    /*
    if (i == dropdownChildItem) {
        draw_rect(x, y + dy, width, h + vpad*2, c_red)
    }
    */

    if (halign == fa_right)
        draw_text(x + width - 4, y + dy + vpad, ds_list_find_value(itemLabels, i))
    else
        draw_text(x +  4, y + dy + vpad, ds_list_find_value(itemLabels, i))

    if (ds_list_find_value(itemTypes, i) == "toggle" or ds_list_find_value(itemTypes, i) == "bool") {
        if (halign == fa_right)
            guiDrawBool(guiGetThing(ds_list_find_value(itemGetters, i)), x + vpad, y + vpad + dy, h, h)
        else
            guiDrawBool(guiGetThing(ds_list_find_value(itemGetters, i)), x + width - (vpad + h), y + vpad + dy, h, h)
    }

    if (ds_list_find_value(itemTypes, i) == "dropdown") {
        var _x, _y, _s;
        _s = h -1
        _y = y + vpad + dy + 1
        if (halign == fa_right)
            _x = x + vpad
        else
            _x = x + width - (vpad + h)

        if (halign == fa_left) {
            draw_line(_x+_s/2, _y     , _x+_s  , _y+_s/2)
            draw_line(_x+_s/2, _y+_s-1, _x+_s  , _y+_s/2-1)
        } else {
            draw_line(_x+_s/2, _y     , _x  , _y+_s/2)
            draw_line(_x+_s/2, _y+_s-1, _x  , _y+_s/2-1)
        }
    }

    dy += h + vpad * 2
}


//outline!!!

if (hasLine) {
    draw_rect_line(x, y, width, height, lineColor)
}

draw_reset()
