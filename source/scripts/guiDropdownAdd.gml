///guiDropdownAdd(dropdown,label,type,getter/action,[setter])
with (argument0) {
    ds_list_add(itemLabels, argument1)
    ds_list_add(itemTypes, argument2)
    ds_list_add(itemGetters, argument3)
    if (argument_count>4)
        ds_list_add(itemSetters, argument[4])

    ds_list_add(itemStates, 0)
}
