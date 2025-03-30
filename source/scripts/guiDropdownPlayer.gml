var dropdown; dropdown = guiDropdownInit(argument0, argument1)

guiDropdownAdd(dropdown, "God Mode", "toggle", "godMode", "godMode")
guiDropdownAdd(dropdown, "Infinite Jump", "toggle", "infJump", "infJump")
guiDropdownAdd(dropdown, "Trail", "dropdown", guiDropdownPlayerTrail)

return dropdown
