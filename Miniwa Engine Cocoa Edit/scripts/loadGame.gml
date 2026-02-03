var f;

if !instance_exists(player){
  instance_create(0,0,player);
}

f = file_bin_open("temp",1);
file_bin_write_byte(f,global.savenum);
file_bin_close(f);
saveExe();
tempExe();
