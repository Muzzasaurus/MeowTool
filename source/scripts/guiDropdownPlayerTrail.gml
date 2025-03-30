var dropdown; dropdown = guiDropdownInit(argument0, argument1)

guiDropdownAddList(dropdown, 25, 150, 25, "trail")
/*
with (dropdown) {
    var item;
    item = guiDropdownAdd(dropdown, "5", "toggle", "equal", "equal")
    ds_list_replace(itemExtra1, item, "trail")
    ds_list_replace(itemExtra2, item, 5)
}
*/

return dropdown
