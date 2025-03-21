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
        switch (keyboard_key) {
            case vk_backspace: {
                var newText; newText = ""

                var i; i = 1
                while (i <= string_length(text)) {
                    if (i != cursorPos)
                        newText += string_char_at(text, i)
                    i += 1
                }
                text = newText

                cursorPos = max(0, cursorPos - 1)
            } break

            case vk_delete: {
                var newText; newText = ""

                var i; i = 1
                while (i <= string_length(text)) {
                    if (i != cursorPos + 1)
                        newText += string_char_at(text, i)
                    i += 1
                }
                text = newText
            } break

            case vk_enter: {
                if (multiLine) {
                    text = string_insert("#", text, cursorPos+1)

                    cursorPos += 1
                }
                else {
                    active=false
                    global.inputtingText=false
                }
            } break

            case vk_shift: break
            case vk_control: break
            case vk_alt: break

            case vk_left: cursorPos = max(0, cursorPos - 1); break
            case vk_right: cursorPos = min(string_length(text), cursorPos + 1); break

            default: {
                if (keyboard_lastkey == ord("#")) {
                    text = string_insert("e", text, cursorPos+1)
                } else {
                    text = string_insert(keyboard_lastchar, text, cursorPos+1)
                }

                cursorPos += 1
            } break
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
    drawTextBox(0, 0, width-pad*2, height-pad*2, text, fa_left, fa_top)

    if (active) {
        draw_line(string_width("a") * cursorPos, string_height("a"), string_width("a") * cursorPos, 0)
    }
d3d_transform_stack_pop()
