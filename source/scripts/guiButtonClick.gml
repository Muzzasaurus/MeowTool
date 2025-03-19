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
}
