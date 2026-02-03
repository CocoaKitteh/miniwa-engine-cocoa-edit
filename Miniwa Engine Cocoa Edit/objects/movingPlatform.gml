#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (!place_free(x+hspeed,y)) {
    hspeed=-hspeed;
}
if (!place_free(x,y+vspeed+yspeed)) {
    if (vspeed!=0) {
        yspeed=-vspeed;
        vspeed=0;
    }
    else {
        vspeed=-yspeed;
        yspeed=0;
    }
}
y+=yspeed;
if (place_meeting(x,y-2,player)) {
    player.y+=vspeed+yspeed;
    with (player) {
        if (place_free(x+other.hspeed,y)) player.x+=other.hspeed;
    }
}
if (vspeed<0) {
    yspeed=vspeed;
    vspeed=0;
}
if (yspeed>0) {
    vspeed=yspeed;
    yspeed=0;
}
