var dropdown; dropdown = guiDropdownInit(argument0, argument1)

guiDropdownAdd(dropdown, "Save as...", "button", "saveMapAs")
guiDropdownAdd(dropdown, "Load...", "button", "loadMap")
guiDropdownAdd(dropdown, "Exit Meowtool", "button", "quit")

return dropdown
