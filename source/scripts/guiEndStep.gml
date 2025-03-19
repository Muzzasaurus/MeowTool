///guiEndStep()
//called at endstep, used for updating gui elements

with (guiEditButton) {
    if (objObjSelect.mode == "build")
        label = "B"
    else if (objObjSelect.mode == "edit")
        label = "E"
    else
        label = "error"
}
