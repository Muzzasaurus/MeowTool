#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
active=0
angle=0
angleSpeed=0
circleWidth=96
xOffset=1
yOffset=1
initSpeed=1
playerStrength=0.01
angleFriction=1.05
scale_amount=0.85 // 0.85 works best, 1 for linear 0.2 for snail
in_wall = 0
draw_offset = 0
timer = 0
path = noone
pathSpeed = 0
pathing = false
drawPath = false
pathAction = path_action_restart
tt=0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (instance_exists(Player)) {
    if (active) and (!Player.dead) {
        if(!in_wall){
        //if player falls into swing with momentum, it'll be turned into angular momentum
        if (initSpeed) {
            angleSpeed=(abs(Player.vspeed)*Player.hspeed*playerStrength)/2
            initSpeed=0
        }
        //place player on swing
        Player.vspeed = 0
        Player.hspeed = 0
        Player.x = x+(circleWidth*sin((angle)*xOffset))
        Player.y = y+(circleWidth*cos((angle)*yOffset))
        //swing controls (whee)
        //speed is divided by angle so that the further you are from 0, the less impact your swing will have
        if (key_left()) {
            angleSpeed-=playerStrength/(abs(angle)+0.9)/(circleWidth/96)
        }
        if (key_right()) {
            angleSpeed+=playerStrength/(abs(angle)+0.9)/(circleWidth/96)
        }
        angle += angleSpeed
        //if player does a loop, change angle by 360 degrees
        if (angle > pi) {
            angle-=2*pi
        }
        if (angle < -pi) {
            angle+=2*pi
        }
        /* debug controls
        if (key_up()) {
            if (circleWidth > 1) circleWidth-=1
        }
        if (key_down()) {
            circleWidth+=1
        } */
        //if going one way, go the other way like a pendulum dinky brain
        if (angle < 0) angleSpeed+=0.01*min(abs(angle),1)
        if (angle > 0) angleSpeed-=0.01*min(abs(angle),1)
        //if (angle > -0.1) and (angle < 0.1) angle /= 1.1
        //do not set this to 1 (default: 1.06)
        angleSpeed /= angleFriction
        //if player jumps off swing, convert swing speed to normal speed
        }
        if (key_jump(vi_pressed)) {
            active=0
            Player.onSwing=false
            angle=0
            angleSpeed=0
            initSpeed=1
            Player.fricSpeed=true
            Player.hspeed=power(abs(Player.x-Player.xarray[0]),scale_amount)
            if(Player.x-Player.xarray[0] < 0)
                Player.hspeed *= -1
            Player.maxSpeed+=abs(Player.hspeed)
            Player.vspeed=Player.y-Player.yarray[0]
            sound_play_slomo("jump_swing")
            timer = 50
        }
        
        if (!place_free(x+(circleWidth*sin((angle+angleSpeed)*xOffset)),y+(circleWidth*cos((angle+angleSpeed)*yOffset)))) {
            Player.x = x+(circleWidth*sin((angle)*xOffset))
            Player.y = y+(circleWidth*cos((angle)*yOffset))
            angleSpeed = -angleSpeed
            in_wall = 1
        }
        else
            in_wall = 0
    }
    //if(!active and point_distance(x,y,Player.x,Player.y) < circleWidth+1 and timer < 1 and key_shoot(vi_pressed)) {
    if(!active and point_distance(x,y,Player.x,Player.y) < circleWidth+1 and timer < 1) {
        active=1
        Player.onSwing=true
        angle=degtorad(point_direction(x,y,Player.x,Player.y)+90)
        if (path != noone) and (!pathing) {
            path_start(path,pathSpeed,pathAction,false)
            pathing = true
        }
    }
}

if timer > 0 and !active
    timer -= 2
else if timer < 50 and active
    timer += 10
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//field circleWidth: number
//field playerStrength: number

/*preview
    if (!FieldDefined("circleWidth")) exit

    draw_circle(x,y,circleWidth,1)
*/
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (active) and instance_exists(Player) {
    draw_set_color($000000)
    draw_line(x,y,Player.x,Player.y)
    draw_set_color($FFFFFF)
}

draw_set_color(c_black)
draw_set_alpha(0.4)
draw_circle(x,y,(circleWidth-10)*(timer/50),false)
draw_set_alpha(1)

asd = draw_offset
repeat(round(circleWidth/2)) {
    draw_sprite_ext(sprSwingRange,0,x + dcos(asd)*circleWidth,y + dsin(asd)*circleWidth, 1, 1, point_direction(x,y,x+dcos(asd),y+dsin(asd)),c_white,1)
    asd += 360/round(circleWidth/2)
}
draw_offset += playerStrength*10

if (drawPath) {
    draw_set_color($000000)
    draw_path(path,xstart,ystart,false)
    draw_set_color($FFFFFF)
}

draw_self()
