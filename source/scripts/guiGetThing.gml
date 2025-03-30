///guiGetThing(thing)

var s; s = argument0

if (s=="godMode") { return savedatap("godMode") }
if (s=="infJump") { return savedatap("infJump") }
if (s=="grid")    { return savedatap("grid") }
if (s=="equal")   {
    return guiGetThing(
        ds_list_find_value(itemExtra1, argument[1]),
        argument[1]) ==
        ds_list_find_value(itemExtra2, argument[1])
}
if (s=="trail")   { return savedatap("trailLength") }
