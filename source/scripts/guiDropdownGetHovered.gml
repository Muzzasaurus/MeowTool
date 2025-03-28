if (dropdownChild != noone) {
    with (dropdownChild) {
        return guiDropdownGetHovered() or other.hover
    }
} else {
    var p; p = false
    if (dropdownParent != noone) {
        p = (dropdownParent.hoveredItem == dropdownParent.dropdownChildItem)
    }
    return hover or p
}
