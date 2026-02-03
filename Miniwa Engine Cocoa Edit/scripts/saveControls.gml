var fp;
fp = file_bin_open("controls",1);
file_bin_write_byte(fp,global.button1);
file_bin_write_byte(fp,global.button2);
file_bin_write_byte(fp,global.button3);
file_bin_write_byte(fp,global.button4);
file_bin_write_byte(fp,global.button5);
file_bin_write_byte(fp,global.button6);
file_bin_close(fp);
