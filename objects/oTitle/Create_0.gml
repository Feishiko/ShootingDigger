TIME = 0;
if(!audio_is_playing(souTitle)){
	audio_stop_all();
	audio_play_sound_on(global.MusicPlayer, souTitle, true, 100);
}