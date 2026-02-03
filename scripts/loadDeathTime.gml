var f,i;
if(file_exists("DeathTime") == false){
  f = file_bin_open("DeathTime",1);
  for(i = 1; i <= 3; i += 1){
    file_bin_write_byte(f,global.death[i]);
    file_bin_write_byte(f,global.death[i]);
    file_bin_write_byte(f,global.death[i]);
    file_bin_write_byte(f,global.death[i]);
    file_bin_write_byte(f,global.time[i]);
    file_bin_write_byte(f,global.time[i]);
    file_bin_write_byte(f,global.time[i]);
    file_bin_write_byte(f,global.time[i]);
  }
  file_bin_close(f);
}else{
  f = file_bin_open("DeathTime",0);
  for(i = 1; i <= 3; i += 1){
    global.death[i] = file_bin_read_byte(f)*1000000;
    global.death[i] += file_bin_read_byte(f)*10000;
    global.death[i] += file_bin_read_byte(f)*100;
    global.death[i] += file_bin_read_byte(f);
    global.time[i] = file_bin_read_byte(f)*1000000;
    global.time[i] += file_bin_read_byte(f)*10000;
    global.time[i] += file_bin_read_byte(f)*100;
    global.time[i] += file_bin_read_byte(f);
  }
  file_bin_close(f);
}
