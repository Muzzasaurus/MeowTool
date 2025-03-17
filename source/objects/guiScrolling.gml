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
scrollX = 0
scrollY = 0
actualScrollX = 0
actualScrollY = 0

scrollSpeed = 20

scrollWidth = 32
scrollHeight = 40

hasFill = false
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (mouseOver) {
    if (keyboard_check(vk_shift)) {
        if (mouse_wheel_down()) {
            actualScrollX += scrollSpeed
        }
        if (mouse_wheel_up()) {
            actualScrollX -= scrollSpeed
        }
    } else {
        if (mouse_wheel_down()) {
            actualScrollY += scrollSpeed
        }
        if (mouse_wheel_up()) {
            actualScrollY -= scrollSpeed
        }
    }
}


scrollWidth = max(width, scrollWidth)
scrollHeight = max(height, scrollHeight)

actualScrollY = clamp(actualScrollY, 0, scrollHeight - height)
actualScrollX = clamp(actualScrollX, 0, scrollWidth - width)

scrollX += (actualScrollX - scrollX) / 2
scrollY += (actualScrollY - scrollY) / 2
#define Trigger_Draw GUI Element
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()

//TODO: make this support scrolling elements inside of scrolling elements
var childSurface; childSurface = surface_create(width-1, height-1)
surface_set_target(childSurface)


//guh
d3d_transform_stack_push()
d3d_transform_set_translation(-scrollX, -scrollY, 0)
d3d_transform_add_translation(-1, -1, 0)

d3d_transform_stack_push()
d3d_transform_add_translation(-x, -y, 0)
guiDrawChildren()
d3d_transform_stack_pop()
d3d_transform_stack_pop()


surface_set_target(application_surface)
draw_surface(childSurface, x+1, y+1)
surface_free(childSurface)

if (global.guiDebug) {
    draw_set_color(make_color_hsv(255 * global.guiElementDepth/10, 255, 255))
    draw_rectangle(x, y, x+width, y+height, true)
    for (b=0;b<2;b+=1) {
        draw_rectangle(x+b, y+b, x+width-b, y+height-b, true)
        if (b == 1)
            draw_text_outline(x+b+3, y+b+3, object_get_name(object_index), draw_get_color())
    }
}

global.guiElementDepth -= 1
