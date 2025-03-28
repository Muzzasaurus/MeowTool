var sidebarWidth; sidebarWidth = global.width - (800 - 1)

globalvar guiSidebar;
guiSidebar = guiCreate(800, 0, sidebarWidth, global.height-1, guiElement, guiRoot)
guiSidebar.isSidebar = true

globalvar guiPalette;
guiPalette = guiCreate(0, 51, sidebarWidth+1, (340 - 50) + 6, guiScrolling, guiSidebar)

with (guiPalette) {
    hasLine = true

    columns=6
    rows=14
    scrollHeight = rows * 42 + 3 - 1
    scrollRate = 42
    scrollSpeed = 0.25

    var k; k=0
    for (i=0; i<rows; i+=1) {
        for (j=0; j<columns; j+=1) {
            k+=1
            with (guiCreate(3 + 42*j,3 + 42*i, 38, 38, guiButton, guiPalette)) {
                objIndex = getPaletteObject(k)
                if (objIndex == noone) instance_destroy()
                clickAction = "select object"
                label = ""

                icon = guiCreate(3, 3, 32, 32, guiSprite, self)
                icon.sprite = object_get_sprite(objIndex)
                icon.mode = "none"
            }
        }
    }
}

globalvar guiEditButton; guiEditButton = guiCreate(913 - 800, 8, 32, 32, guiButton, guiSidebar)
guiEditButton.clickAction = "change edit mode"

globalvar guiOpenMenu; guiOpenMenu = guiCreate(952 - 800, 5, 101, 38, guiButton, guiSidebar)
guiOpenMenu.label = "Open Menu"
guiOpenMenu.clickAction = "open menu"

globalvar guiInfo; guiInfo = guiCreate(805 - 800, 5, 101, 38, guiButton, guiSidebar)
guiInfo.label = "Info"
guiInfo.clickAction = "open info"
