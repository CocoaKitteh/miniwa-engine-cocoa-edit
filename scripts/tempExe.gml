var f;
f = file_bin_open("temp",0);
global.savenum = file_bin_read_byte(f);
file_bin_close(f);
saveExe();
