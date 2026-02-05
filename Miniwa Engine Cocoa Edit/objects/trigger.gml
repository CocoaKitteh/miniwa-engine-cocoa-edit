#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !active {
    with all {
        if trg==other.trg and speed==0 {
            switch sprite_index {
                case sprCherry:
                    audio_play_single(sndCherry)
                    break
                case sprSpikeUp:
                case sprSpikeDown:
                case sprSpikeLeft:
                case sprSpikeRight:
                    audio_play_single(sndSpikeTrap)
                    break
            }
            vspeed=vsp
            hspeed=hsp
        }
    }
    active=true
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//field trg: number
