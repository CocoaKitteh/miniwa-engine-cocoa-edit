audio_all_stop();
instance_create(x,y,bloodEmitter);
if(instance_exists(player)){
  with(player){
    instance_destroy();
  }
}
instance_create(view_xview+400,view_yview+304,GAMEOVER);
global.death[global.savenum] += 1;
saveDeathTime();
world.vol = 5000
world.gmvol = world.volume
world.volct = 0
ss_PlaySound(world.Sgameover)
