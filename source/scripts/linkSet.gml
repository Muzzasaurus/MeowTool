///linkSet(val)
//sets a value through the instances value link

if (linkUseCode) {
    execute_string(linkSetCode, argument0)
} else {
    if (linkObj != noone) {
        setVar(argument0, linkVar, linkObj)
    } else if (linkGlobal) {
        setVar(argument0, linkVar)
    } else {
        setVar(argument0, linkVar, id)
    }
end

if (linkSave) {
    if (linkSavePersistent)
        savedatap(linkSaveKey, argument0)
    else
        savedata(linkSaveKey, argument0)
}
