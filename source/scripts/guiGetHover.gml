///guiGetHover(x, y)
//gets what the mouse is currently hovering over, but also gets the elements screen position
//very slow, only call this once a frame!!!

//this script makes my head hurt :(
var xx, yy;
xx = argument0
yy = argument1

screenX = xx + x
screenY = yy + y

if (object_index == guiCheckBox) {
    var oldWidth; oldWidth = width
    var oldX; oldX = x

    draw_set_font(fntGuiRegular)
    width += labelPadding + string_width(label)
    if (labelHalign == fa_right)
        x -= width - oldWidth
}

if (not point_in_rectangle(mouse_xfixed, mouse_y, xx, yy, xx+width, yy+height)) {
    mouseOver = false
    if (object_index == guiCheckBox) {
        x = oldX
        width = oldWidth
    }
    return noone
}

if (object_index == guiCheckBox) {
    x = oldX
    width = oldWidth
}

mouseOver = true

var hov;
for (i=ds_list_size(children)-1; i >= 0; i-=1) {
    if (object_index == guiScrolling) {
        with (ds_list_find_value(children, i)) {
            hov = guiGetHover(xx + x - other.scrollX, yy + y - other.scrollY)
        }
    } else {
        with (ds_list_find_value(children, i)) {
            hov = guiGetHover(xx + x, yy + y)
        }
    }
    if (hov != noone) {
        return hov
    }
}

global.guiMouseHoveringX = mouse_xfixed - xx
global.guiMouseHoveringY = mouse_y - yy

if (hoverable) {
    return id
} else
    return noone
