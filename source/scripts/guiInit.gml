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
globalvar guiDropdownLayer; guiDropdownLayer = guiCreate(0, 0, 10000, 10000, guiElement, guiRoot)
guiDropdownLayer.hasFill = false
guiDropdownLayer.hasLine = false


//modify the code past this comment

guiInitGlobals()
guiInitSidebar()

/*
var el, b;
el = guiCreate(32, 32, 256, 96, guiScrolling, guiRoot)
el.hasLine = true
el.scrollWidth = el.width
el.scrollHeight = el.height * 4

for (yy=32; yy+48 < el.scrollHeight; yy+=48)
    b = guiCreate(32, yy, 128, 32, guiButton, el)
*/


//besides this line
guiPostInit()
