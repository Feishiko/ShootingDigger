text[0] = "Program : Feishiko";
text[1] = "Art : Feishiko";
text[2] = "Music : Feishiko";
text[3] = "Game Design : Feishiko";
text[4] = "Made in GameMaker Studio 2";
text[5] = "Made for Ludum Dare 48";
text[6] = "Thanks for Playing!"
timer = 0;
tTimer = 0;

audio_stop_all();
audio_emitter_gain(global.MusicPlayer, 1);
audio_play_sound(souEnd, 100, true);