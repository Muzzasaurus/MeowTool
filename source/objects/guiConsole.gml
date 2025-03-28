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
title = "Cat's Console"
width = 500
height = 300

event_user(0)

command = ""

fillColor = $202020
content.hasFill = false

inputBox = guiCreate(0, content.height-20, width, 20, guiTextInput, content)
inputBox.hasFill = false
inputBox.textColor = c_white
inputBox.linkObj = id
inputBox.linkVar = "command"

log = ""
#define Step_0
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
if (command != "") {
    print("> " + command)

    var opCode; opCode = string_copy(command, 1, string_pos(" ", command)-1)
    if (string_count(" ", command) == 0) { opCode = command; argString = "" }
    var argString; argString = string_copy(command, string_pos(" ", command)+1, 999999)

    if (opCode == "execute")
        execute_string(argString)
    else if (opCode == "echo")
        print(argString)
    else if (opCode == "clear")
        log = ""
    else if (command == "help") {
        print("crash (inCRedibly bAd SHell) v0.1")
        print("commands:")
        print("help [topic] (topics arent implemented yet, sorry!!!)")
        print("execute [code]")
        print("echo [text]")
        print("clear")
    } else
        print("unkown command: " + opCode)

    command = ""
    if (keyboard_check_pressed(vk_enter))
        with (inputBox) {
            active = true
            global.inputtingText = true
            text = string_better(linkGet())
            cursorPos = string_length(text)
        }
}

command = ""
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
draw_set_font(fntMonoTextBox)
draw_set_color(c_white)
draw_set2(fa_left, fa_bottom)
draw_text(x+3, y+height - 23, string_curse(log, true))

draw_reset()
