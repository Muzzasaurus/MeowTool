input_update()

global.increment+=1
global.tooltip = ""

if (keyboard_check_pressed(vk_space)) {
    var dropdown; dropdown = guiCreate(mouse_xfixed, mouse_y, 200, 200, guiDropdown, guiDropdownLayer)
    guiDropdownAdd(dropdown, "God Mode", "toggle", "godModeGet", "godModeSet")
    guiDropdownAdd(dropdown, "Save Map", "button", "saveMap")
}

with (guiRoot) global.guiMouseHovering = guiGetHover(0, 0)
