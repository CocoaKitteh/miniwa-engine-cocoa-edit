#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if collision_rectangle(x+32, y+4, x+33, y+28, player, true, true) > 0 {
    if player.hspeed < 5 {player.frozen = -1;}
    if player.frozen == -1 {
        player.sprite_index=sprPlayerSliding;
        player.image_speed=1/2;
        player.image_xscale = -1;
        player.x = x+38;
        player.gravity = 0;
        player.vspeed = 2;
        if keyboard_check_pressed(world.rightKey) {
            audio_play(sndJump);
            if keyboard_check(world.jumpKey) {player.vspeed = -8;player.Llv = 1;player.hspeed = 15;}
            else {player.vspeed = -4;player.hspeed = 6;player.frozen = 2;}
        }
    }
}
