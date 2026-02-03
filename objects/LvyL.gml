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
            player.frozen = 1;
            if keyboard_check(world.jumpKey) {player.vspeed = -9;sound_play(sndLvyJump);player.x+=15}
            else {player.vspeed = 2;player.x+=3}
            player.image_xscale=1
        }
    }
}
