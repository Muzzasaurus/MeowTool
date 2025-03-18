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
sprite = -1
subImage = 0

//angle is still VERY buggy, highly recommended not to use it
angle = 0

blend = c_white
alpha = 1
#define Trigger_Draw GUI Element
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var xscale, yscale;
xscale = width/sprite_get_width(sprite)
yscale = height/sprite_get_height(sprite)

var ox, oy;
ox = sprite_get_xoffset(sprite)*xscale
oy = sprite_get_yoffset(sprite)*yscale

var invox, invoy;
invox = width  - ox
invoy = height - oy

var drawx, drawy;
drawx = x - pivot_pos_x(invox, invoy, angle)
drawy = y - pivot_pos_y(invox, invoy, angle)

draw_sprite_ext(sprite, subImage, drawx, drawy, xscale, yscale, angle, blend, alpha)
