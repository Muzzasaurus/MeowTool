///guiLink(parent,child)
//links 2 gui elements together
var a, b; a = argument0; b = argument1

if (a == noone or b == noone) return 0

ds_list_add(a.children, b)

if (b.parent != noone) { show_message("Tried assigning a new parent to a GUI element when it already had one.") game_end() }
b.parent = a
