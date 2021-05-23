

timer = 0;

if(room = rmStage1){
	Textbox("Stage 1 - The Ground");
	if(!audio_is_playing(souStage1)){
		audio_stop_all();
		audio_play_sound_on(global.MusicPlayer, souStage1, true, 100);
	}
}

if(room = rmStage2){
	Textbox("Stage 2 - Underground Space");
	if(!audio_is_playing(souStage2)){
		audio_stop_all();
		audio_play_sound_on(global.MusicPlayer, souStage2, true, 100);	
	}
}

if(room = rmStage3){
	Textbox("Stage 3 - Earthcore Rainforest");
	if(!audio_is_playing(souStage3)){
		audio_stop_all();
		audio_play_sound_on(global.MusicPlayer, souStage3, true, 100);	
	}
}