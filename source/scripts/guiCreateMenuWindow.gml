///guiCreateMenuWindow()
var content, b;

guiMenu = guiCreateWindow(global.width/2 - 300/2, global.height/2 - floor(450/2), 300, 450, "Menu")
guiMenu.associatedGlobalVar = "guiMenu"

content = guiMenu.content

//TODO: add checkboxes
b = guiCreate(150-floor(130/2), 20, 130, 30, guiButton, content)
b.clickAction = "toggle gridlines"
b.label = "Toggle Grid-Lines"

b = guiCreate(150-floor(130/2), content.height - (20 + 30), 130, 30, guiConfirmationButton, content)
b.label = "Exit MeowTool"
b.clickAction = "quit"
