if(place_meeting(x,y+1,block) || onPlatform){
  vspeed = -jump;
  audio_play(sndJump);
  djump = true;
}
else if(djump == true){
  vspeed = -jump2;
  audio_play(sndDJump);
  djump = false;
}
