///guiInit()
global.guiMainLineColor = c_black
global.guiMainFillColor = $DDDDDD
global.guiMainHoverFillColor = $BBBBBB
global.guiMainPrimedFillColor = c_white

globalvar guiRoot; guiRoot = guiCreate(0, 0, 10000, 10000, guiElement, noone)
guiRoot.hasFill = false
guiRoot.hasLine = false
globalvar guiWindowLayer; guiWindowLayer = guiCreate(0, 0, 10000, 10000, guiElement, guiRoot)
guiWindowLayer.hasFill = false
guiWindowLayer.hasLine = false


//modify the code past this comment
guiInitGlobals()
guiInitSidebar()


//besides this line
guiPostInit()
