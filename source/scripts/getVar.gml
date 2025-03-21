///getVar(var,[obj])
if (argument_count < 2) {
    return variable_global_get(argument[0])
} else {
    with (argument[1])
        return variable_local_get(argument[0])
}
