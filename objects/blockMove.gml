#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if collision_rectangle(x, y+30, x+31, y+40, player, 1, 1) {
    if player.y + player.vspeed < y+44 {
        if player.vspeed < 0 {player.vspeed = 0;}
        player.y = y+44;
    }
} else if collision_rectangle(x-8, y+1, x+1, y+30, player, 1, 1) {
    if player.x + player.hspeed > x-8 {
        if player.hspeed > 0 {player.hspeed = 0;}
        player.x = x-8;
    }
} else if collision_rectangle(x+30, y+1, x+40, y+30, player, 1, 1) {
    if player.x + player.hspeed < x+40 {
        if player.hspeed < 0 {player.hspeed = 0;}
        player.x = x+40;
    }
}
y+=yspeed;
if (place_meeting(x,y-2,player)) {
    if hspeed = 0{hspeed = hsp}
    if vspeed = 0{yspeed = vsp;}
    player.y+=vspeed+yspeed;
    with (player) {
        if (place_free(x+other.hspeed,y)) player.x+=other.hspeed;
    }
}
