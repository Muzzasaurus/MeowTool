///getVar(var,[obj])
if (argument_count < 2) {
    if (variable_global_exists(argument0))
        return variable_global_get(argument0)
} else {
    with (argument1)
        if (variable_local_exists(argument0))
            return variable_local_get(argument0)
}
