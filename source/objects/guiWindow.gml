#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=604
invert=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
hasTitleBar = true
hasCloseButton = true
title = "Window!"

lastMouseX = mouse_xfixed
lastMouseY = mouse_y

dragging = false


hoverable = true
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (hasTitleBar)
    if (titleBar.hover and mouse_check_button_pressed(mb_left))
        dragging = true
else
    if (content.hover and mouse_check_button_pressed(mb_left))
        dragging = true

if (mouse_check_button_released(mb_left))
    dragging = false

if (dragging) {
    x += mouse_xfixed - lastMouseX
    y += mouse_y - lastMouseY
}

lastMouseX = mouse_xfixed
lastMouseY = mouse_y
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///initialise the window

titleBar = noone
closeButton = noone
if (hasTitleBar) {
    titleBar = guiCreate(0, 0, width, 16, guiElement, id)
    titleBar.hoverable = true
    titleBar.title = guiCreate(2, 0, width, 16, guiLabel, titleBar)
    titleBar.title.label = title
    titleBar.title.halign  = fa_left
    if (hasCloseButton) {
        closeButton = guiCreate(width-16, 0, 16, 16, guiButton, titleBar)
        closeButton.label = "X"
        closeButton.clickAction = "close window"
    }
    content = guiCreate(0, 16, width, height-16, guiElement, id)
} else {
    content = guiCreate(0, 0, width, height, guiElement, id)
    content.hasLine = false
    content.hoverable = true
}
