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
hasLine = true
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (hasTitleBar)
    if (titleBar.hover and mouse_check_button_pressed(mb_left))
        dragging = true

if (mouseOver and mouse_check_button_pressed(mb_left))
    with (parent) {
        ds_list_delete(children, ds_list_find_index(children, other.id))
        ds_list_add(children, other.id)
    }

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
    titleBar.title.font = fntFullscreen
    if (hasCloseButton) {
        closeButton = guiCreate(width-16, 0, 16, 16, guiButton, titleBar)
        closeButton.label = "X"
        closeButton.clickAction = "close window"
        closeButton.labelFont = fntFullscreen
        /*
        closeButton.icon = guiCreate(1, 1, 16 - 2, 16 - 2, guiSprite, closeButton)
        closeButton.icon.sprite = sprGuiCloseButton
        */
    }
    content = guiCreate(0, 16, width, height-16, guiElement, id)
} else {
    content = guiCreate(0, 0, width, height, guiElement, id)
}
