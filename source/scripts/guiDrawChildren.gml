///guiDrawChildren()

d3d_transform_stack_push()
d3d_transform_add_translation(x, y, 0)
for (i=0; i < ds_list_size(children); i+=1) {
    with (ds_list_find_value(children, i)) {
        event_perform(ev_trigger, tr_element_draw)
        guiDrawChildren()
    }
}
d3d_transform_stack_pop()
