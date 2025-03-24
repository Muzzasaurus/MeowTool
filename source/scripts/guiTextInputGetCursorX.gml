///guiTextInputGetCursorX()

var cursorX; cursorX = 0
for (i=1;i<=cursorPos;i+=1) {
    cursorX += 1
    if (string_char_at(text, i) == real_lf) {
        cursorX = 0
    }
}

return cursorX
