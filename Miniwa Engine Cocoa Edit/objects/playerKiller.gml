#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//ƒvƒŒƒCƒ„[‚ªG‚ê‚é‚ÆŽ€‚Ê•¨‘Ì
//Šî–{“I‚É”z’u‚µ‚È‚¢‚Å‚­‚¾‚³‚¢B
#define Collision_tActiver
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if other.active and speed == 0 {
    if sprite_index == sprCherry {audio_play(sndCherry)}
    vspeed = vsp;
    hspeed = hsp;
    with(other) instance_destroy();
}
