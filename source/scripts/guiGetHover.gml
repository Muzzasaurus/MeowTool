///guiGetHover(x, y)
//gets what the mouse is currently hovering over
//very slow, only call this once a frame!!!

//this script makes my head hurt :(
var xx, yy;
xx = argument0
yy = argument1

if (not point_in_rectangle(mouse_xfixed, mouse_y, xx, yy, xx+width, yy+height)) {
    mouseOver = false
    return noone
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

if (hoverable)
    return id
else
    return noone
