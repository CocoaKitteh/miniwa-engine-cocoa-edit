#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
able = 1;
ystlength = random_range(2,4)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if able = 0{
delay += 1;
if delay > 100{able = 1;delay = 0;}
sprite_index = sprNoone
}else sprite_index = sprJumpItem
y = ystart+lengthdir_y(4,yst)
yst += ystlength
#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if able = 1{
other.djump = 1;
able = 0;
}
