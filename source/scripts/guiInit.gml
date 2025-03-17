///guiInit()
global.guiMainLineColor = c_black
global.guiMainFillColor = $DDDDDD
global.guiMainHoverFillColor = $BBBBBB
global.guiMainPrimedFillColor = c_white

globalvar guiRoot; guiRoot = guiCreate(0, 0, 10000, 10000, guiElement, noone)
guiRoot.hasFill = false
guiRoot.hasLine = false

var panel, scrolling;
panel = guiCreate(0, 0, 200, 500, guiElement, guiRoot)

scrolling = guiCreate(10, 10, 200 - 20, 500 - 20, guiScrolling, panel)
scrolling.scrollWidth  = scrolling.width
scrolling.scrollHeight = 640
for (xx=0; xx + 32 < scrolling.scrollWidth; xx += 40) {
    for (yy=0; yy + 32 < scrolling.scrollHeight; yy+=40) {
        var b; b = guiCreate(xx, yy, 32, 32, guiButton, scrolling)
        b.label = "test"
    }
}
