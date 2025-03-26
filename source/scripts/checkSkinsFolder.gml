///checkSkinsFolder(file)
file=argument0
check=global.skinDir + savedatap("currentSkin") + "\" + file + ".png"
if (file_exists(check)) {
    return check
} else {
    return ""
}
