#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with all {
    if hsp!=0 or vsp!=0 {
        if place_meeting(x+hsp,y+vsp,other) and trg==other.trg {
            if !stopped {
                hsp=0
                vsp=0
                hspeed=hsp
                vspeed=vsp
                stopped=true
            }
        }
    }
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//field trg: number
