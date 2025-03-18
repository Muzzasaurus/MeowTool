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
scrolling.scrollHeight = 2000
scrolling.hasFill = true
scrolling.fillColor = c_olive
//scrolling.hasLine = true

var xx, yy;
yy = 0
while (yy + 40 <= scrolling.scrollHeight) {
    var row; row = guiCreate(0, yy, 40 * 3, 40, guiElement, scrolling)
    row.hasLine = false
    row.hasFill = false

    xx = 0
    while (xx + 40 <= scrolling.scrollWidth) {
        var b; b = guiCreate(xx, 0, 32, 32, guiSprite, row)
        var spr; spr = -1
        while (not sprite_exists(spr)) {
            spr = irandom(500)
        }
        b.sprite = spr
        b.subImage = irandom(sprite_get_number(spr))
        b.blend = irandom($FFFFFF)
        //b.alpha = random(1)

        xx += 40
    }

    yy += 40
}
