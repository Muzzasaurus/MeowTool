///guiCreateMenuWindow()
var content, b;

guiMenu = guiCreateWindow(global.width/2 - 300/2, global.height/2 - floor(450/2), 300, 450, "Menu")
guiMenu.associatedGlobalVar = "guiMenu"

content = guiMenu.content

//TODO: add checkboxes
b = guiCreate(20, 20, 32, 32, guiCheckBox, content)
b.associatedObj = objObjSelect
b.associatedVar = "drawGrid"
b.save = true
b.saveKey = "grid"
b.label = "Grid-Lines"

b = guiCreate(20, 20 + 32 + 5, 16, 16, guiCheckBox, content)
b.associatedObj = objObjSelect
b.associatedVar = "drawGrid"
b.save = true
b.saveKey = "grid"
b.label = "Grid-Lines"

b = guiCreate(150-floor(130/2), content.height - (20 + 30), 130, 30, guiConfirmationButton, content)
b.label = "Exit MeowTool"
b.clickAction = "quit"
