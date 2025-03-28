///guiDrawBool(check,x,y,w,h)
//Draws either a cross (false) or a checkmark (true).

var xx, yy, w, h;
xx = argument1
yy = argument2
w  = argument3
h  = argument4

if (argument0) {
    draw_line(xx, yy+h/2, xx+w/2, yy+h)
    draw_line(xx+w/2, yy+h, xx+w, yy)
} else {
    draw_line(xx, yy, xx+w, yy+h)
    draw_line(xx, yy+h, xx+w, yy)
}
