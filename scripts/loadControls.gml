var fp;
fp = file_bin_open("controls",0);
global.button1 = file_bin_read_byte(fp);
global.button2 = file_bin_read_byte(fp);
global.button3 = file_bin_read_byte(fp);
global.button4 = file_bin_read_byte(fp);
global.button5 = file_bin_read_byte(fp);
global.button6 = file_bin_read_byte(fp);
file_bin_close(fp);
