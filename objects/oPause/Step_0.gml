if(pause == 0 && keyboard_check_pressed(vk_escape)){
	instance_deactivate_all(true);
	screen_save("game.png");
	sprite_replace(sPause, "game.png", 1, false, false, 0, 0);
	pause = 1;
}else if(pause == 1 && keyboard_check_pressed(vk_escape)){
	instance_activate_all();
	pause = 0;	
}