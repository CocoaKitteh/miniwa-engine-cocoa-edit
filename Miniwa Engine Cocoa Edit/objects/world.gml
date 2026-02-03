#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
global.music = 1;
global.savenum = 1;
global.difficulty = 1;
global.room_caption_def = "";
global.death[1] = 0;
global.death[2] = 0;
global.death[3] = 0;
global.time[1] = 0;
global.time[2] = 0;
global.time[3] = 0;
global.debug=true
loadDeathTime();
ss_Init();
load_music()

//volume control º¼·ýÄÁÆ®·Ñ
vol = 10000
volume = 10000
gmvol = 5000
filePlaying = -1;

/*
1. File format must be .ogg!
2. Open the world - creat event.
3.
myMusic = ss_LoadSound(working_directory+"\Musics\SoundName.ogg",1); to add sound.
myMusic2 = ss_LoadSound(working_directory+"\Musics\SoundName2.ogg",1); to add sound.
4. Open the musicfuntion script.
5. Add
case room01:
case room02
        if filePlaying != 3 {
        ss_StopSound(curMusic);
            filePlaying = 3;
            curMusic = myMusic;
            ss_LoopSound(curMusic)
        }
        break;
case room03:
case room04
        if filePlaying != 4 {
        ss_StopSound(curMusic);
            filePlaying = 4;
            curMusic = myMusic2;
            ss_LoopSound(curMusic)
        }
        break;
to Play Sound./*
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
leftKey = global.button1
rightKey = global.button2
jumpKey = global.button3
ss_SetSoundVol(curMusic,vol)
ss_SetSoundVol(Sgameover,gmvol)
if volct = 1{
if vol < volume{vol=volume}else volct = 0
if gmvol > 5000{
gmvol=0;
}
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//ƒ‹[ƒ€‚Ì‚P•bŠÔ‚ÌƒXƒeƒbƒv”‚ðÝ’è
room_speed=50;
//ƒ‹[ƒ€ƒLƒƒƒvƒVƒ‡ƒ“‚ÌÝ’èiã‚Éo‚Ä‚é•¶Žš‚Ëj
room_caption="I wanna be the Engine MINIWA Edition";
if(room != rInit && room != rMenu && room != rSelectStage && room != rTitle){
  if(global.difficulty == 0){
    room_caption += " Medium";
  }else if(global.difficulty == 1){
    room_caption += " Hard";
  }else if(global.difficulty == 2){
    room_caption += " VeryHard";
  }else if(global.difficulty == 3){
    room_caption += " Impossible";
  }
}
if(room != rInit && room != rMenu && room != rTitle){
  room_caption += "  SaveData"+string(global.savenum);
}
room_caption += "   [Esc]:end"
global.room_caption_def = room_caption;
if vol != volume{volct = 1}
musicFuntions();
ss_SetSoundVol(world.curMusic,vol)
ss_StopSound(bgm03)
#define Other_30
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//ƒQ[ƒ€‚ðI—¹‚·‚é
file_delete("temp");
game_end();
#define KeyPress_27
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//ƒQ[ƒ€‚ðI—¹‚·‚é
file_delete("temp");
game_end();
#define KeyPress_77
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Ctrl+M - ‰¹‚Ì§Œä
if(keyboard_check(vk_control) == true){
  sound_stop_all();
  global.music = !global.music;
}
#define KeyPress_82
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(room != rInit && room != rMenu && room != rTitle){
  sound_stop_all();
  loadGame();
}
#define KeyPress_113
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
ss_StopSound(curMusic)
ss_StopSound(Sgameover)
file_delete("temp");
sound_stop_all();
game_restart();
#define KeyPress_115
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Alt+F4 - ƒQ[ƒ€‚ðŽ~‚ß‚é
if(keyboard_check(vk_alt) == true){
  file_delete("temp");
  game_end();
}
