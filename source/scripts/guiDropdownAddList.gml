///guiDropdownAddList(dropdown,begin,end,increment,getter/setter)
var dropdown; dropdown = argument0
var beginCount; beginCount = argument1
var endCount; endCount = argument2
var inc; inc = argument3
var getter; getter = argument4

with (dropdown) {
    for (count=beginCount; count <= endCount; count += inc) {
        var item; item = guiDropdownAdd(dropdown, string(count), "toggle", "equal", "equal")
        ds_list_replace(itemExtra1, item, getter)
        ds_list_replace(itemExtra2, item, count)
    }

    return ds_list_size(itemLabels)
}
