if(pause == 1){
	draw_sprite_ext(sPause, -1, 0, 0, 456 / sprite_width, 342 / sprite_height, 0, c_white, 1);
	draw_set_alpha(0.6);
	draw_rectangle_color(0, 0, 456, 342, c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
	DrawSetCenter();
	draw_text(456 / 2, 342 / 2, "Pause");
	DrawSetFormat();
}