///guiCreate(x,y,w,h,element,[parent])
//helper function

var xx,yy,w,h,element,parent;
xx = argument0
yy = argument1
w  = argument2
h  = argument3
element = argument4
parent = argument5

var i;
i = instance_create(xx, yy, element)
i.width = w
i.height = h
guiLink(parent, i)

return i
