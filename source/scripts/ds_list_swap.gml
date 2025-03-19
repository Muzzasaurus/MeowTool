///ds_list_swap(id,a,b)
//swaps two items in a list

var aVal; aVal = ds_list_find_value(argument0, argument1)
ds_list_replace(argument0, argument1, ds_list_find_value(argument0, argument2))
ds_list_replace(argument0, argument2, aVal)
