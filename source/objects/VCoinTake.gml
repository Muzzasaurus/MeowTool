#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed=0.15*dt
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (other.vvvvvv && visible) {
    sound_play_slomo("sndVCoin")
    other.vvvvvv=false
    change_skin(skin_default)
    visible=false
}
