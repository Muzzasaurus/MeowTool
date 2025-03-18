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
    }
}
