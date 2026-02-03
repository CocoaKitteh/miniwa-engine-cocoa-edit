switch(room) {
    case rTitle:
        if filePlaying != 1 {
            ss_StopSound(curMusic);
            filePlaying = 1;
            curMusic = Smain;
            ss_LoopSound(curMusic)
        }
        break;
    case rTest:
    case rBossTest:
        if filePlaying != 2 {
            ss_StopSound(curMusic);
            filePlaying = 2;
            curMusic = Sstage1;
            ss_LoopSound(curMusic)
        }
        break;
}
