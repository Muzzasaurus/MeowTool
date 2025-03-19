///guiPostInit()
with (guiRoot) {
    ds_list_delete(children, ds_list_find_index(children, guiWindowLayer))
    ds_list_add(children, guiWindowLayer)
}
