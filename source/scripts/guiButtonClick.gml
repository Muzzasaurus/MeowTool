///guiButtonClick(action)
switch (argument0) {
    case "kill player": {
        kill_player()
    }break

    case "close window": {
        with (parent.parent) {
            instance_destroy()
        }
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

    case "open menu": {
        if (instance_exists(guiMenu)) {
            instance_destroy_id(guiMenu)
            label = "Open Menu"
        } else {
            guiCreateMenuWindow()
            label = "Close Menu"
        }
    }break

    case "toggle gridlines": {
        objObjSelect.drawGrid=!objObjSelect.drawGrid
        savedatap("grid",objObjSelect.drawGrid)
    }break

    case "quit": {
        event_game_end()
    }break

    case "saveMapAs": {
        if(saveMap()) {
            objObjSelect.changesMade=false
        }
    }break

    case "loadMap": {
        if (!objObjSelect.changesMade) {
            loadMap()
        } else if (!instance_exists(objPopup)) {
            o=instance_create(0,0,objPopup)
            o.txt="Map has been edited, are#do you want to discard these changes?"
            o.scr=loadMap
        }
    } break
}
