///draw_rect_line(x,y,w,h,[color],[alpha])
//TODO: add support for angles

var oldCol, oldAlp;
oldCol = draw_get_color()
oldAlp = draw_get_alpha()

if (argument_count > 4) draw_set_color(argument[4])
if (argument_count > 5) draw_set_alpha(argument[5])

draw_rectangle(argument0, argument1, argument0 + argument2 - 1, argument1 + argument3 - 1, true)

draw_set_color(oldCol)
draw_set_alpha(oldAlp)
