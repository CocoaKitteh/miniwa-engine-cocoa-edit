#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if collision_rectangle(x-1, y+4, x, y+28, player, true, true) > 0 {
    if player.hspeed > -5 {player.frozen = -1;}
    if player.frozen == -1 {
        player.sprite_index=sprPlayerSliding;
        player.image_speed=1/2;
        player.image_xscale = 1;
        player.x = x-6;
        player.gravity = 0;
        player.vspeed = 2;
        if keyboard_check_pressed(world.leftKey) {
            audio_play(sndLvyJump);
            if keyboard_check(world.jumpKey) {player.vspeed = -8;player.hspeed = -15;player.Llv = 1;}
            else {player.vspeed = -4;player.hspeed = -6;player.frozen = 2;}
        }
    }
}
