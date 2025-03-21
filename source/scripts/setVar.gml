///setVar(val,var,[obj])
if (argument_count < 3) {
    variable_global_set(argument1, argument0)
} else {
    with (argument[2])
        variable_local_set(argument1, argument0)
}
