///setVar(val,var,[obj])
if (argument_count < 3) {
    if (variable_global_exists(argument1))
        variable_global_set(argument1, argument0)
} else {
    with (argument[2])
        if (variable_local_exists(argument1))
            variable_local_set(argument1, argument0)
}
