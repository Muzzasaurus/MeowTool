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
for (i=1;i<=10;i+=1) {
    var window;
    window = guiCreateWindow(irandom(global.width-10), irandom(global.height-10), 150, 120, "Window " + string(i), true, true)
    var text; text = guiCreate(16, 16, window.content.width - 32, window.content.height - 32, guiLabel, window.content)
    text.label = string(i)
}

var b; b = guiCreate(48, 48, 100, 100, guiButton, guiRoot)
b.clickAction = "kill player"
b.label = "die"


//besides this line
guiPostInit()
