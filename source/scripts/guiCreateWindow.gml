///guiCreateWindow(x,y,w,h,title,[closebutton],[titlebar])
var w; w = guiCreate(argument0, argument1, argument2, argument3, guiWindow, guiWindowLayer)
w.title = argument4
if (argument_count > 5) {
    w.hasCloseButton = argument[5]
    if (argument_count > 6) {
        w.hasTitleBar = argument[6]
    }
}

with (w) event_user(0)

return w
