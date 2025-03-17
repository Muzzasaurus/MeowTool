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
texture = -1
#define Trigger_Draw GUI Element
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (texture == -1) exit

draw_primitive_begin_texture(pr_trianglestrip, texture)
    draw_vertex_texture(x      , y       , 0, 0)
    draw_vertex_texture(x+width, y       , 1, 0)
    draw_vertex_texture(x      , y+height, 0, 1)
    draw_vertex_texture(x+width, y+height, 1, 1)
draw_primitive_end()
