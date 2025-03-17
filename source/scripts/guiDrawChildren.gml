///guiDrawChildren()
//draws the children of a gui element
//also just used as a function that gets ran at the end of a
//gui elements draw element trigger

//prevents this from being ran multiple times
if (__guiDrawChildren_ran) return 0
__guiDrawChildren_ran = true

global.guiElementDepth += 1

d3d_transform_stack_push()
d3d_transform_add_translation(x, y, 0)
for (i=0; i < ds_list_size(children); i+=1) {
    with (ds_list_find_value(children, i)) {
        event_perform(ev_trigger, tr_element_draw)
        guiDrawChildren()
    }
}
d3d_transform_stack_pop()

if (object_index != guiScrolling) {
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
}
