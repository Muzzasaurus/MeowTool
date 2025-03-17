///guiInit()
global.guiMainLineColor = c_black
global.guiMainFillColor = $DDDDDD
global.guiMainHoverFillColor = $BBBBBB
global.guiMainPrimedFillColor = c_white

globalvar guiRoot; guiRoot = guiCreate(0, 0, 10000, 10000, guiElement)
guiRoot.hasFill = false
guiRoot.hasLine = false

var panel, button, label;
panel = guiCreate(32, 32, 300, 200, guiElement, guiRoot)

button = guiCreate(150 - 30, 200 - (20 + 30), 60, 30, guiButton, panel)
button.label = "yes"
button.clickAction = "kill player"

label = guiCreate(20, 20, 260, 200 - (20 + 30 + 20), guiLabel, panel)
label.label = "do you want to die?"
