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
//update: angle is now unused
angle = 0

blend = c_white
alpha = 1

//can be "stretch", "square", or "none"
mode = "stretch"
#define Trigger_Draw GUI Element
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var xscale, yscale;
if (mode != "none") {
    xscale = width/sprite_get_width(sprite)
    yscale = height/sprite_get_height(sprite)
} else {
    xscale = 1
    yscale = 1
}

//@Square
if (mode == "square") {
    xscale = min(xscale, yscale)
    yscale = min(xscale, yscale)
}

var ox, oy;
ox = sprite_get_xoffset(sprite)*xscale
oy = sprite_get_yoffset(sprite)*yscale
/*
var invox, invoy;
invox = width  - ox
invoy = height - oy
*/
var drawx, drawy;
if (mode == "none" or mode == "square") {
    drawx = x + width/2
    drawy = y + height/2
    drawx += ox - sprite_get_width(sprite) * xscale / 2
    drawy += oy - sprite_get_height(sprite) * yscale / 2
} else if (mode == "stretch") {
    //forgot the expression, making a guess here
    drawx = x + ox
    drawy = y + oy
}

draw_sprite_ext(sprite, subImage, floor(drawx), floor(drawy), xscale, yscale, angle, blend, alpha)
