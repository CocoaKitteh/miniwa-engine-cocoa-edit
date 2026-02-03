#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if collision_rectangle(x-1, y+4, x, y+28, player, true, true) > 0 {
    if player.hspeed > -5 {player.frozen = -1;}
    if player.frozen = -1 {
        player.sprite_index=sprPlayerSliding;
        player.image_speed=1/2;
        player.image_xscale = 1;
        player.x = x-6;
        player.gravity = 0;
        player.vspeed = 2;
        if keyboard_check_pressed(world.leftKey) {
            player.frozen = 1;
            if keyboard_check(world.jumpKey) {player.vspeed = -9;audio_play(sndLvyJump);player.x-=15}
            else {player.vspeed = 2;player.x-=3}
            player.image_xscale=-1
        }
    }
}
