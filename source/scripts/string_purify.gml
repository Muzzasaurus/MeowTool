///string_purify(str,[linefeed])
//turns all of the hashes into line feeds, and turns all of the escaped hashes into actual hashes
var oldStr; oldStr = argument0
var lineFeed; lineFeed = lf
if (argument_count>1) lineFeed = argument[1]
str = ""

for (i=1;i<=string_length(oldStr);i+=1) {
    if (string_char_at(oldStr, i) == "\" and string_char_at(oldStr, i+1) == "#") {
        str += "#"
        i+=1
    } else if (string_char_at(oldStr, i) == "#") {
        str += lineFeed
    } else if (string_copy(oldStr, i, 2) == lf and lineFeed == real_lf) {
        str += lineFeed
        i += 1
    } else {
        str += string_char_at(oldStr, i)
    }
}

return str
