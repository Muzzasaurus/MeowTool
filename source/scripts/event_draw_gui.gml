//draw GUI event launcher
var u,v;

//correct for dx8 offset
u=-0.5+0.5*global.GUIwidth/global.APPwidth
v=-0.5+0.5*global.GUIheight/global.APPheight

d3d_set_projection_ortho(u-global.GUIxoff,v-global.GUIyoff,global.GUIwidth,global.GUIheight,0)
//we keep this one inlined for speed because of the with (all)
with (all) event_perform(ev_trigger,ev_draw_gui)

//drawing the tooltip
draw_set_font(fntFullscreen)
var w, h;
var tipX, tipY;
var textPad; textPad = 3

w = textPad*2 + string_width(global.tooltip)
h = textPad*2 + string_height(global.tooltip)

tipX = mouse_xfixed
tipY = mouse_y + 20

tipX = clamp(tipX, 0, global.width  - w - 1)
tipY = clamp(tipY, 0, global.height - h - 1)

draw_rect(tipX, tipY, w, h, c_white, 1, 0)
draw_set_color(c_black)
draw_rectangle(tipX, tipY, tipX + w, tipY + h, true)
draw_text(tipX+textPad, tipY+textPad, global.tooltip)

draw_reset()

event_debug_gui()
