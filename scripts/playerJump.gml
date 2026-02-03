if(place_meeting(x,y+1,block) || onPlatform){
  vspeed = -jump;
  sound_play(sndJump);
  djump = true;
}
else if(djump == true){
  vspeed = -jump2;
  sound_play(sndDJump);
  djump = false;
}
