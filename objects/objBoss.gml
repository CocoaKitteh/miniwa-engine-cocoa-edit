#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 50
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(x,y,objBomb)
repeat(3){
sound_play(sndShoot)
}
alarm[0] = 50
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_angle = direction;
move_towards_point(player.x,player.y,0)
if objHPbar.hp <= 0{
    instance_destroy();
    with(objHPbar)instance_destroy();
}
if objHPbar.hp <= 25{
    delay += 1;
    if delay >= 13{
        i = instance_create(random_range(32,832),-32,spikeDown)
        i.vspeed = 5
        delay = 0;
        }
}
#define Collision_bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with(other)instance_destroy();
objHPbar.hp -= 1;
sound_play(sndBossHit)
