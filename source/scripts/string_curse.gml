///string_curse(str,fixlf)
//does the opposite of string_purify, good for when you actually want to display your purified string
var oldStr; oldStr = argument0
var fixlf; fixlf = false
if (argument_count > 1) fixlf = argument[1]

str = ""

for (i=1;i<=string_length(oldStr);i+=1) {
    if (string_copy(oldStr, i, 2) == lf or string_char_at(oldStr, i) == real_lf) {
        if (fixlf)
            str += "#"
        else if (string_char_at(oldStr, i) == real_lf)
            str += lf

        if (string_copy(oldStr, i, 2) == lf) i+=1
    } else if (string_char_at(oldStr, i) == "\" and string_char_at(oldStr, i+1) == "#") {
        str += "\\#"
        i+=1
    } else if (string_char_at(oldStr, i) == "#") {
        str += "\#"
    } else {
        str += string_char_at(oldStr, i)
    }
}

return str
