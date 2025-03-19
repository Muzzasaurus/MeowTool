var sidebarWidth; sidebarWidth = global.width - (800 + 2)

globalvar guiSidebar;
guiSidebar = guiCreate(801, 0, sidebarWidth, global.height-1, guiElement, guiRoot)
guiSidebar.isSidebar = true

globalvar guiPalette;
guiPalette = guiCreate(0, 51, sidebarWidth+1, (340 - 50) + 6, guiScrolling, guiSidebar)
with (guiPalette) {
    hasLine = true

    columns=6
    rows=14
    scrollHeight = rows * 42 + 2
    scrollSpeed = 42

    var k; k=0
    for (i=0; i<rows; i+=1) {
        for (j=0; j<columns; j+=1) {
            k+=1
            with (guiCreate(3 + 42*j,3 + 42*i, 38, 38, guiButton, guiPalette)) {
                objIndex = getPaletteObject(k)
                if (objIndex == noone) instance_destroy()
                clickAction = "select object"
                label = ""

                icon = guiCreate(4, 4, 32, 32, guiSprite, self)
                icon.sprite = object_get_sprite(objIndex)
                icon.mode = "none"
            }
        }
    }
}

globalvar guiEditButton; guiEditButton = guiCreate(913 - 800, 8, 32, 32, guiButton, guiSidebar)
guiEditButton.clickAction = "change edit mode"
