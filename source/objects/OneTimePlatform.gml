#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
active=true
#define Trigger_On Player Jump
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (instance_place(x, y, Player)) {
  visible = false
  active = false
  mask_index = sprNothing
}
