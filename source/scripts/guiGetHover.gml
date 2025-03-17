///guiGetHover(x, y)
//gets what the mouse is currently hovering over
//very slow, only call this once a frame!!!

//this script makes my head hurt :(
var xx, yy;
xx = argument0
yy = argument1

if (not point_in_rectangle(mouse_xfixed, mouse_y, xx, yy, xx+width, yy+height)) {
    return noone
}

var hov;
for (i=0; i < ds_list_size(children); i+=1) {
    with (ds_list_find_value(children, i)) {
        hov = guiGetHover(xx + x, yy + y)
    }
    if (hov != noone) {
        return hov
    }
}

if (hoverable)
    return id
else
    return noone
