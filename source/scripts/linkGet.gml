///linkGet()
//gets a value through the instances value link

if (linkUseCode) {
    //NOTE: if this gets too laggy, make natalie switch to a different method
    return execute_string(linkGetCode)
}

if (linkSave) {
    return savedata(linkSaveKey)
} else {
    if (linkObj != noone) {
        return getVar(linkVar, linkObj)
    } else if (linkGlobal) {
        return getVar(linkVar)
    } else {
        return getVar(linkVar, id)
    }
}
