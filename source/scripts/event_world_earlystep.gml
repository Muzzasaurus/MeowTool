input_update()

global.increment+=1
global.tooltip = ""

if (new_keyboard_check_pressed(vk_f6)) {
    var dropdown; dropdown = guiCreate(mouse_xfixed, mouse_y, 200, 200, guiDropdown, guiDropdownLayer)
    guiDropdownAdd(dropdown, "God Mode", "toggle", "godMode", "godMode")
    guiDropdownAdd(dropdown, "Save Map", "button", "save map")
    guiDropdownAdd(dropdown, "Quit", "button", "quit")
}

with (guiRoot) global.guiMouseHovering = guiGetHover(0, 0)
