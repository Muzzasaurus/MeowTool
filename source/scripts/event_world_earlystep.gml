input_update()

global.increment+=1
global.tooltip = ""

if (new_keyboard_check_pressed(vk_f6)) {
    var dropdown; dropdown = guiCreate(mouse_xfixed, mouse_y, 200, 200, guiDropdown, guiDropdownLayer)
    guiDropdownAdd(dropdown, "Player Shenanigans", "dropdown", guiDropdownTest)
    guiDropdownAdd(dropdown, "Save Map...", "button", "save map")
    guiDropdownAdd(dropdown, "Quit", "button", "quit")
    guiDropdownAdd(dropdown, "Player Shenanigans 2", "dropdown", guiDropdownTest)
}

with (guiRoot) global.guiMouseHovering = guiGetHover(0, 0)
