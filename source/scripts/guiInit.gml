///guiInit()
var i, button, label;
i = guiCreate(0, 0, 300, 200, guiElement)

button = guiCreate(150 - 30, 200 - (20 + 30), 60, 30, guiButton, i)
button.label = "ok"

label = guiCreate(20, 20, 260, 200 - (20 + 30 + 20), guiLabel, i)
label.label = "we have come for your nectar"
