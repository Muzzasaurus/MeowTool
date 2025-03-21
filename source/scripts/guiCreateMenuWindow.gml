///guiCreateMenuWindow()
var content, b;

guiMenu = guiCreateWindow(global.width/2 - 300/2, global.height/2 - floor(450/2), 300, 450, "Menu")
guiMenu.associatedGlobalVar = "guiMenu"

content = guiMenu.content


var yy; yy = 20
var spacing; spacing = 24

b = guiCreate(20, yy, 16, 16, guiCheckBox, content)
b.associatedObj = objObjSelect
b.associatedVar = "drawGrid"
b.save = true
b.saveKey = "grid"
b.label = "Grid Lines"

yy += spacing

b = guiCreate(20, yy, 16, 16, guiCheckBox, content)
b.associatedObj = Player
b.associatedVar = "godMode"
b.save = true
b.saveKey = "godMode"
b.label = "God Mode"

yy += spacing

b = guiCreate(20, yy, 16, 16, guiCheckBox, content)
b.associatedObj = Player
b.associatedVar = "infJump"
b.save = true
b.saveKey = "infJump"
b.label = "Infinite Jump"

yy += spacing

b = guiCreate(20, yy, 16, 16, guiCheckBox, content)
b.associatedObj = Player
b.associatedVar = "trailView"
b.save = true
b.saveKey = "trailView"
b.label = "View Trail"

yy += spacing

b = guiCreate(20, yy, 128, 128, guiTextInput, content)
b.text = "ohio"
b.dummy = true
b.multiLine = true


b = guiCreate(150-floor(130/2), content.height - (20 + 30), 130, 30, guiConfirmationButton, content)
b.label = "Exit MeowTool"
b.clickAction = "quit"
