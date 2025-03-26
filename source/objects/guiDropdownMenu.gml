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
//some notes on the dropdown system (i made it be nicely formatted, so you know its legit)
/*
    the items inside of a dropdown list are not instances; they are just items in multiple list
    data structures. this is to save on memory and performance.

    you might be wondering why this isnt using the fancy linking system i set up, and the reason
    why i didnt just use that is because it would create WAY too many ds_lists, and i just think
    that it isnt needed for something like this.
*/

itemTypes = ds_list_create()
itemLabels = ds_list_create()
itemGetAction = ds_list_create()
itemSetAction = ds_list_create()
