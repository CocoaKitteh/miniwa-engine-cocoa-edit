var f,i,tem;
f = file_bin_open("DeathTime",1);
for(i = 1; i <= 3; i += 1){
  tem = global.death[i];
  file_bin_write_byte(f,floor(tem/1000000));
  tem -= floor(tem/1000000)*1000000;
  file_bin_write_byte(f,floor(tem/10000));
  tem -= floor(tem/10000)*10000;
  file_bin_write_byte(f,floor(tem/100));
  tem -= floor(tem/100)*100;
  file_bin_write_byte(f,tem);
  tem = global.time[i];
  file_bin_write_byte(f,floor(tem/1000000));
  tem -= floor(tem/1000000)*1000000;
  file_bin_write_byte(f,floor(tem/10000));
  tem -= floor(tem/10000)*10000;
  file_bin_write_byte(f,floor(tem/100));
  tem -= floor(tem/100)*100;
  file_bin_write_byte(f,tem);
}
file_bin_close(f);
