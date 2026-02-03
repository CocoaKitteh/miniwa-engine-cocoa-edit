#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
select = 1;
str[1] = "Data1";
str[2] = "Data2";
str[3] = "Data3";
stw = 450
depth = 1
sprite_index = temp;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(keyboard_check_pressed(global.button1) == true){
  audio_play(sndJump);
  select -= 1;
  if(select < 1){
    select = 3;
  }
}else if(keyboard_check_pressed(global.button2) == true){
  audio_play(sndJump);
  select += 1;
  if(select > 3){
    select = 1;
  }
}else if(keyboard_check_pressed(global.button3) == true){
  global.savenum = select;
  if select2 = 0{
  if(file_exists("save"+string(select)) == true){
  loadGame();
  }
  }else{
  global.difficulty = select2-1;
  if(file_exists("save"+string(select)) == true){
    file_delete("save"+string(select));
  }
  global.death[select] = 0;
  global.time[select] = 0;
  room_goto(rTest)
  }
}else if(keyboard_check_pressed(global.button5) == true){
  audio_play(sndJump);
  select2 -= 1;
  if(select2 < 0){
    select2 = 4;
  }
}else if(keyboard_check_pressed(global.button6) == true){
  audio_play(sndJump);
  select2 += 1;
  if(select2 > 4){
    select2 = 0;
  }
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var i;
for(i = 1; i <= 3; i += 1){
  draw_set_color(c_black)
  draw_set_halign(fa_left)
  draw_set_valign(fa_top)
  draw_set_font(font40);
  draw_text(x+(i-1)*239,y,str[i]);
  draw_text(x,y+200,"Difficulty")
  draw_set_font(font12);
  draw_text(x,y+280,"Press Up And Down To Choose A Difficulty")
  draw_text(x+(i-1)*239+10,y+70,"death:"+string(global.death[i]));
  draw_text(x+(i-1)*239+10,y+90,"time:"+string(global.time[i])+"s");
  draw_text(x+stw,y+260,"MEDIUM")
  draw_text(x+stw,y+290,"HARD")
  draw_text(x+stw,y+320,"V.HARD")
  draw_text(x+stw,y+350,"IMPOSSIBLE")
  draw_set_color(c_white)
  if select2 != 0{draw_sprite(sprMChoose2,-1,x+stw-48,y+222+select2*30);}
  if(i == select){
    draw_sprite(sprMChoose,-1,x+(i-1)*239+65,y+150);
  }
}
