#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
frozen = false; //‘€ì‚ð‹ÖŽ~‚µ‚Ä‚¢‚é‚Æ‚«‚ÍtrueA•’Ê‚Ífalse
jump = 8.5; //‚P’i–Ú‚ÌƒWƒƒƒ“ƒv‚Ì‰‘¬“x
jump2 = 7; //‚Q’i–Ú‚ÌƒWƒƒƒ“ƒv‚Ì‰‘¬“x
djump = true; //‚Q’i–Ú‚ÌƒWƒƒƒ“ƒv‚ª‰Â”\‚È‚çtrueA•s‰Â”\‚È‚çfalse
maxSpeed = 3; //¶‰E‚ÌˆÚ“®‘¬“xihspeedj
gravity = 0.4; //d—Í
maxFallSpeed = 8; //Å‘å—Ž‰º‘¬“x
maxVspeed = 9; //ã‰º‚ÌÅ‘å‘¬“xivspeedj
image_speed = 0.2; //ƒAƒjƒ[ƒVƒ‡ƒ“‚Ì‘¬“x

//ƒ[ƒ‹ƒhObject‚ª–³‚¯‚ê‚Î¶¬‚·‚é
//ƒ[ƒ‹ƒhObject‚ÍƒQ[ƒ€‚Ìƒ[ƒh‚âƒŠƒXƒ^[ƒg‚ð§Œä
if(instance_exists(world) == false){
  instance_create(0,0,world);
}

//ƒŠƒ{ƒ“ibowj‚ð¶¬
instance_create(x,y,bow);

//ƒZ[ƒuƒf[ƒ^‚ª–³‚¯‚ê‚Îì¬
if(file_exists("save"+string(global.savenum)) == false){
  global.death[global.savenum] = 0;
  global.time[global.savenum] = 0;
  saveGame();
}

//Time‚ðŒv‘ª‚·‚é
alarm[0] = room_speed;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Time‚ÌŒv‘ª
if(room != rInit && room != rMenu && room != rTitle && room != rSelectStage){
  global.time[global.savenum] += 1;
}
alarm[0] = room_speed;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
room_caption = global.room_caption_def + " Death["+string(global.savenum)+"]:"+string(global.death[global.savenum]);
room_caption += " Time["+string(global.savenum)+"]:"+string(global.time[global.savenum]);
if !instance_exists(camera)instance_create(1,1,camera)
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var L,R,h,U,D,j;
L = keyboard_check_direct(global.button1);
R = keyboard_check_direct(global.button2);
U = keyboard_check_direct(global.button5);
D = keyboard_check_direct(global.button6);
h = R;
if(h == 0){
  h = -L;
}
j = D;
if(j == 0){
  j = -U
}
if ladderon{
vspeed = maxSpeed*j
}
if frozen > 0{frozen -= 1}
if frozen = -1 && sprite_index != sprPlayerSliding{
    frozen = 0;
}

if frozen = 0{
if(h != 0){
  hspeed = maxSpeed*h;
  image_xscale = h;
  sprite_index = sprPlayerRunning;
  image_speed = 0.5;
}
else{
  hspeed = 0;
  sprite_index = sprPlayerIdle;
  image_speed = 0.2;
}
}
if (onPlatform == false){
  if(vspeed < -0.05){
    sprite_index = sprPlayerJump;
  }
  if(vspeed > 0.05){
    sprite_index = sprPlayerFall;
  }
}
else{
  if(place_meeting(x,y+4,platform) == false){
    onPlatform = 0;
  }
}
if(abs(vspeed) > maxVspeed){
  vspeed = sign(vspeed)*maxVspeed;
}
if frozen = 0 && ladderon = 0{
    if(keyboard_check_pressed(global.button4)){
      playerShoot();
    }
    if(keyboard_check_pressed(global.button3)){
      playerJump();
    }
    if(keyboard_check_released(global.button3)){
      playerVJump();
    }
}
if(place_meeting(x,y+1,SlipBlock)){
 if(tempHspeed == 0){
  tempHspeed = hspeed;
 }
 else if(sign(tempHspeed) == sign(hspeed) && hspeed != 0){
  tempHspeed = hspeed;
 }
 else if(sign(tempHspeed) != sign(hspeed) || hspeed == 0){
  hspeed += tempHspeed;
  tempHspeed *= 0.95;
  if(abs(tempHspeed) < 0.2){
   tempHspeed = 0;
  }
 }
}else{
 tempHspeed = 0;
}
if place_meeting(x,y,Ladder)&&keyboard_check_pressed(global.button5){
ladderon = 1;
}
if !place_meeting(x,y,Ladder)ladderon = 0
if ladderon{
if speed = 0{image_speed = 0}else image_speed = 1/4;
    sprite_index = sprPlayerLadder
    gravity = 0
    maxSpeed = 2;
    djump = 1;
}else{
    gravity = 0.4;
    maxSpeed = 3;
}
if Llv = 1{
    frozen = 4
    hspeed *= 0.93
    if abs(hspeed) < 3{Llv = 0}
}

if place_meeting(x,y,playerKiller) killPlayer()

if global.godmode image_alpha=0.5 else image_alpha=1
if global.infjump {djump=true;image_blend=c_blue} else image_blend=c_white

if global.debug {
    if keyboard_check_pressed(ord("G")) {global.godmode=!global.godmode;audio_play(sndBlockChange)}
    if keyboard_check_pressed(ord("I")) global.infjump=!global.infjump
    if keyboard_check(vk_tab) {x=mouse_x;y=mouse_y}
    if keyboard_check_pressed(vk_enter) room_goto_next()
    if keyboard_check_pressed(vk_backspace) room_goto_previous()
}
#define Collision_block
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//•Ç‚Æ‚ÌÕ“Ë”»’è

//‘OŒã‚É•Ç‚ª‚ ‚éŽž
if(place_free(x+hspeed,y) == false){
  if(hspeed <= 0){//¶
    move_contact_solid(180,abs(hspeed));
  }
  if(hspeed > 0){//‰E
    move_contact_solid(0,abs(hspeed));
  }
  hspeed = 0;
}

//ã‰º‚É•Ç‚ª‚ ‚éŽž
if(place_free(x,y+vspeed) == false){
  if(vspeed <= 0){//ã
    move_contact_solid(90,abs(vspeed));
  }
  if(vspeed > 0){//‰º
    move_contact_solid(270,abs(vspeed));
    djump=1;
  }
  vspeed = 0;
}

//ŽÎ‚ß‚ÌˆÊ’u‚É•Ç‚ª‚ ‚éŽž
if (place_free(x+hspeed,y+vspeed) == false){
  hspeed=0;
}
#define Collision_platform
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if vspeed >= 0{
if(y-vspeed/2 <= other.y){
  if(other.vspeed >= 0){
    y = other.y-9;
    vspeed = other.vspeed;
    djump = true;
  }
  onPlatform = 1;
  djump = true;
}
}
#define Other_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//‰æ–Ê‚ÌŠO‚Éo‚½‚Æ‚«‚Ì”»’è
var changeRoom,roomTo;

//ƒ‹[ƒ€‚ÌŠO‚É‹‚é‚©‚Ç‚¤‚©‚Ìƒ`ƒFƒbƒN
changeRoom = outsideRoom();

if(changeRoom == true){
  //‹ß‚­‚ÉroomChanger‚ª—L‚ê‚ÎA‚»‚ÌroomTo‚Ìƒ‹[ƒ€‚ÉˆÚ“®B–³‚¯‚ê‚ÎŽ€–S
  roomTo = instance_position(x,y,roomChanger).roomTo;
  if(place_meeting(x,y,roomChanger) == false){
    killPlayer();
  }
  else{
      room_goto(roomTo);
  }

  //À•W‡‚í‚¹iƒ‹[ƒ€‚ÌƒTƒCƒY‚ª“¯‚¶‚Å‚È‚¢‚Æ‹““®‚ª•Ï‚É‚È‚è‚Ü‚·j
  if(x < 0){
    x = room_width-16;
    y -= vspeed;
    changeRoom = true;
  }
  else if(x > room_width){
    x = 16;
    y -= vspeed;
    changeRoom = true;
  }
  else if(y < 0){
    y = room_height-16;
    x = xprevious;
    changeRoom = true;
  }
  else if(y > room_height){
    y = 16;
    x = xprevious;
    changeRoom = true;
  }

}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !keep_momentum {
    speed=0
    djump=true
    image_xscale=1
}

keep_momentum=false
#define KeyPress_81
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Ž©ŽEiKillPlayer‚ðŽÀsj
killPlayer();
