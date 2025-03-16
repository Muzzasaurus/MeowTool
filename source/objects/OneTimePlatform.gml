#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()

old_sprite = sprite_index
#define Trigger_On Player Jump
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (instance_place(x, y, Player)) {
  old_sprite = sprite_index
  sprite_index = -1
}
