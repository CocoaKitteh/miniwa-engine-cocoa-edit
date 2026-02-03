#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//ƒL[ƒ{[ƒh‚Ìƒ{ƒ^ƒ“”z’u‚ÉŠÖ‚·‚é‰ŠúÝ’è
//"controls"ƒtƒ@ƒCƒ‹‚ª‘¶Ý‚µ‚Ä‚¢‚ê‚Îƒ[ƒh‚µA–³‚¯‚ê‚ÎƒfƒtƒHƒ‹ƒg‚ðÝ’è‚µ‚ÄƒZ[ƒu
if (file_exists("controls")) {
    loadControls();
}
else {
    defControls();
    saveControls();
}

//"temp"ƒtƒ@ƒCƒ‹‚ª‘¶Ý‚µ‚Ä‚¢‚ê‚Îƒ[ƒh‚µA–³‚¯‚ê‚ÎŽŸ‚Ì•”‰®iƒXƒ^[ƒg’n“_j‚ÉˆÚ“®
if(file_exists("temp") == true){
  tempExe();
}
else{
  room_goto_next();
}
