#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
active=true

old_mask = mask_index
#define Trigger_On Player Jump
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (instance_place(x, y, Player)) {
  visible = false
  active = false
  old_mask = mask_index
  mask_index = sprNothing
}
