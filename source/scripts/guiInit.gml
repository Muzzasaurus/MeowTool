///guiInit()
global.guiMainLineColor = c_black
global.guiMainFillColor = $DDDDDD
global.guiMainHoverFillColor = $BBBBBB
global.guiMainPrimedFillColor = c_white

globalvar guiRoot; guiRoot = guiCreate(0, 0, 10000, 10000, guiElement, noone)
guiRoot.hasFill = false
guiRoot.hasLine = false

global.guiWindowList = ds_list_create()


//modify the code past this comment
var testWindow;
testWindow = guiCreateWindow(64, 32, 150, 120, "Test Window", true, true)
var text; text = guiCreate(16, 16, testWindow.content.width - 32, testWindow.content.height - 32, guiLabel, testWindow.content)
text.label = "ejfdsjfkajfk#dfjweoirw#deee"
