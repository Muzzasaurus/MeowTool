///guiButtonClick(action)
switch (argument0) {
    case "kill player": {
        kill_player()
    }break

    case "select object": {
        with (objObjSelect) {
            selectedObj=other.objIndex
            if (mode == "edit") {
                buildMode()
            }
        }
    }break

    case "change edit mode": {
        with (objObjSelect) {
            with (objObjSelect) {
                if (mode == "build") {
                    editMode()
                } else {
                    buildMode()
                }
            }
        }
    }break
}
