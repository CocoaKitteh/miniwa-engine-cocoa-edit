var f,roomTo;
f = file_bin_open("save"+string(global.savenum),0);
roomTo = file_bin_read_byte(f)*10000;
roomTo += file_bin_read_byte(f)*100;
roomTo += file_bin_read_byte(f);
room_goto(roomTo);
if( instance_exists(player) == false){
  instance_create(0,0,player);
}
player.x = file_bin_read_byte(f)*10000;
player.x += file_bin_read_byte(f)*100;
player.x += file_bin_read_byte(f);
player.y = file_bin_read_byte(f)*10000;
player.y += file_bin_read_byte(f)*100;
player.y += file_bin_read_byte(f);
global.difficulty = file_bin_read_byte(f);
global.item1 = file_bin_read_byte(f);
global.item2 = file_bin_read_byte(f);
global.item3 = file_bin_read_byte(f);
global.item4 = file_bin_read_byte(f);
global.item5 = file_bin_read_byte(f);
global.item6 = file_bin_read_byte(f);
global.item7 = file_bin_read_byte(f);
global.item8 = file_bin_read_byte(f);
global.item9 = file_bin_read_byte(f);
global.item10 = file_bin_read_byte(f);
file_bin_close(f);
