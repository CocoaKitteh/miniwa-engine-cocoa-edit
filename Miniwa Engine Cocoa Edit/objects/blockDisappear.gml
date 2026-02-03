#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (distance_to_object(player)<2) {
    audio_play(sndBlockChange);
    instance_destroy();
}
