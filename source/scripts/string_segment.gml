///string_segment(str,start,end)
var str; str = argument0
var start; start = argument1
//grr end is taken
var startnt; startnt = argument2

var ret; ret = ""

i = start
while (i <= startnt) {
    ret += string_char_at(str, i)
    i+=1
}

return ret
