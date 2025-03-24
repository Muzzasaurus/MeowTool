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
active = false

associatedVar = ""
associatedObj = noone
save = false
saveKey = ""

dummy = false
text = ""

multiLine = false

fillColor = c_white
hoverable = true


cursorPos = 0
#define Step_1
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
if (mouse_check_button_pressed(mb_left)) {
    if (hover) {
        active = true
        global.inputtingText = true
        cursorPos = string_length(text)
    } else {
        active=false
        global.inputtingText=false
    }
}

if (active) {
    if (keyboard_check_pressed(vk_anykey)) {
        if (keyboard_check_pressed(vk_enter)) {
            text = string_insert(real_lf, text, cursorPos+1)
            cursorPos += 1
        } else if keyboard_check_pressed(vk_backspace) {
            text = string_delete(text, cursorPos, 1)
            cursorPos = max(0, cursorPos - 1)
        } else if keyboard_check_pressed(vk_delete) {
            text = string_delete(text, cursorPos+1, 1)
        } else if keyboard_check_pressed(vk_left) {
            cursorPos = max(0, cursorPos - 1)
        } else if keyboard_check_pressed(vk_right) {
            cursorPos = min(string_length(text), cursorPos + 1)
        } else if keyboard_check_pressed(vk_down) {
            var xx; xx = guiTextInputGetCursorX()

            do {
                cursorPos += 1
            } until (string_char_at(text, cursorPos) == real_lf or cursorPos > string_length(text))

            if (cursorPos > string_length(text))  {
                cursorPos = string_length(text)
                break
            }

            if (xx != 0)
                cursorPos += 1

            repeat (xx - 1) {
                if (string_char_at(text, cursorPos) == real_lf) {
                    cursorPos -= 1
                    break
                }

                cursorPos = min(string_length(text), cursorPos + 1)
            }
        } else if keyboard_check_pressed(vk_up) {
            var xx; xx = guiTextInputGetCursorX()

            if (xx == cursorPos) {
                cursorPos = 0
                break
            }

            var argh; argh = 0
            repeat (2) {
                while !(string_char_at(text, cursorPos) == real_lf or cursorPos <= 0) {
                    cursorPos = max(0, cursorPos - 1)
                }

                if (argh == 0)
                    cursorPos = max(0, cursorPos - 1)

                argh += 1
            }

            if (xx != 0)
                cursorPos += 1

            ///*
            repeat (xx - 1) {
                if (string_char_at(text, cursorPos) == real_lf) {
                    cursorPos -= 1
                    break
                }

                cursorPos = min(string_length(text), cursorPos + 1)
            }
            //*/
        } else if (keyboard_lastkey == vk_control or
                   keyboard_lastkey == vk_alt or
                   keyboard_lastkey == vk_shift) {
            string(254)
        } else {
            text = string_insert(keyboard_lastchar, text, cursorPos+1)
            cursorPos += 1
        }
    }
}
#define Trigger_Draw GUI Element
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
draw_set_color(c_black)
draw_set_font(fntMonoTextBox)
var pad; pad = 2
d3d_transform_stack_push()
    d3d_transform_add_translation(pad, pad, 0)
    d3d_transform_add_translation(x, y, 0)
    drawTextBox(0, 0, width-pad*2, height-pad*2, string_curse(text), fa_left, fa_top)

    if (active) {
        var cursorLine; cursorLine = string_count(real_lf, string_copy(text, 0, cursorPos))
        d3d_transform_add_translation(0, string_height("a") * cursorLine, 0)

        var xx; xx = guiTextInputGetCursorX()

        draw_line(string_width("a") * xx, string_height("a"), string_width("a") * xx, 0)
    }
d3d_transform_stack_pop()
