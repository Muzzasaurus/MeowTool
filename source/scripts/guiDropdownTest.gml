var dropdown; dropdown = guiCreate(argument0, argument1, 200, 200, guiDropdown, guiDropdownLayer)

guiDropdownAdd(dropdown, "God Mode", "toggle", "godMode", "godMode")
guiDropdownAdd(dropdown, "Infinite Jump", "toggle", "infJump", "infJump")
guiDropdownAdd(dropdown, "Recurse!", "dropdown", guiDropdownTest)

return dropdown
