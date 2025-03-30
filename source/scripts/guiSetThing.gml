var s; s = argument0
var arg; arg = argument1

if (s=="godMode") { Player.godMode = arg; savedatap("godMode", arg) }
if (s=="infJump") { Player.infJump = arg; savedatap("infJump", arg) }
if (s=="grid")    { objObjSelect.drawGrid = arg; savedatap("grid", arg) }
if (s=="equal") {
    guiSetThing(
        ds_list_find_value(itemExtra1, argument[2]),
        ds_list_find_value(itemExtra2, argument[2]),
        argument[2])
}
if (s=="trail") {
    var input, length;
    input=arg
    if (input >= 0) {
        length=input
    } else if (input > 1000) {
        length=1000
    } else {
        length=0
    }
    if (length > savedatap("trailLength")) {
        with (Player) {
            for (i=0; i<=length; i+=1) {
                xarray[i]=x
                yarray[i]=y
                spriteindexarray[i]=sprite_index
                imageindexarray[i]=image_index
                facingarray[i]=facing
                vfliparray[i]=vflip
            }
        }
    }
    with (Player) {
        trailLength=length
    }
    savedatap("trailLength",length)
}
