///guiCreateMenuWindow()
var content, b;

guiMenu = guiCreateWindow(global.width/2 - 300/2, global.height/2 - floor(450/2), 300, 450, "Menu")
guiMenu.associatedGlobalVar = "guiMenu"

content = guiMenu.content


var yy; yy = 20
var spacing; spacing = 24

b = guiCreate(20, yy, 16, 16, guiCheckBox, content)
b.linkObj = objObjSelect
b.linkVar = "drawGrid"
b.linkSave = true
b.linkSaveKey = "grid"
b.label = "Grid Lines"

yy += spacing

b = guiCreate(20, yy, 16, 16, guiCheckBox, content)
b.linkObj = Player
b.linkVar = "godMode"
b.linkSave = true
b.linkSaveKey = "godMode"
b.label = "God Mode"

yy += spacing

b = guiCreate(20, yy, 16, 16, guiCheckBox, content)
b.linkObj = Player
b.linkVar = "infJump"
b.linkSave = true
b.linkSaveKey = "infJump"
b.label = "Infinite Jump"

yy += spacing

b = guiCreate(20, yy, 16, 16, guiCheckBox, content)
b.linkObj = Player
b.linkVar = "trailView"
b.linkSave = true
b.linkSaveKey = "trailView"
b.label = "View Trail"

yy += spacing

b = guiCreate(20, yy, 128, 128, guiTextInput, content)
b.linkSave = true
b.linkSaveKey = "foo"

b.multiLine = true


b = guiCreate(150-floor(130/2), content.height - (20 + 30), 130, 30, guiConfirmationButton, content)
b.label = "Exit MeowTool"
b.clickAction = "quit"
