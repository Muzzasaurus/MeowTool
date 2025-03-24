///stringGetLine(str,line)
//WARNING: dont rely on this function too heavily, its only really good in scenarios when its called one or two times
//with about 10 lines in str

var str; str = argument0
var line; line = argument1

var curLine; curLine = 1
var char; char = 1
var out; out = ""

while (curLine <= line) {
    if (curLine == line) {
        out = out + string_char_at(str, char)
    }

    char += 1
    if (string_purify(string_char_at(str, char)) == lf) {
        curLine += 1
        char += 1
    }
}

return out
