///guiCreate(x,y,w,h,element,parent)
//helper function
//supply -1 to width and/or height to disable it being overwritten

var xx,yy,w,h,element,parent;
xx = argument0
yy = argument1
w  = argument2
h  = argument3
element = argument4
parent = argument5

var i;
i = instance_create(xx, yy, element)
if (w >= 0)
    i.width = w

if (h >= 0)
    i.height = h

guiLink(parent, i)

return i
