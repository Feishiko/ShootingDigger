textout = string_copy(text, 1, num)

audio_play_sound(souText, 2, false);

num += 1;	

if(num < textnum){
	textout += choose("@", "#", "%", "*", "&", "!")
}
if(num <= textnum){
	alarm[0] = 5;
}