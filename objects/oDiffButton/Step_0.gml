TIME++;
if(collision_point(mouse_x, mouse_y, id, 0, 0)){
	image_angle = cos(TIME / 10) * 5;
	ok = 1;
}else{
	image_angle = 0;
	ok = 0;
}

if(mouse_check_button_pressed(mb_left) && ok == 1 && global.Diffcults == 0){
	global.Diffcults = 1;
	audio_play_sound(souButton, 1, false);
}else if(mouse_check_button_pressed(mb_left) && ok == 1 && global.Diffcults == 1){
	global.Diffcults = 0;
	audio_play_sound(souButton, 1, false);
}

image_index = global.Diffcults;