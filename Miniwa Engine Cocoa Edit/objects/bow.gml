#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//ƒvƒŒƒCƒ„[‚ÌˆÊ’u‚ð’Ç‚¢‚©‚¯‚é
x = player.x;
y = player.y;
image_xscale = player.image_xscale;
//“ïˆÕ“x‚PˆÈã‚Åíœ
if(global.difficulty!=0 || room == rSelectStage){
  instance_destroy();
}
