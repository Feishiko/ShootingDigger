textnum = string_length(text);

DrawSetCenter();
draw_set_color(c_white);
draw_set_font(fontMain);
draw_text_ext(456 / 2, 342 / 2, textout, -1, window_get_width() - 60);
//DrawSetFormat()

if(num >= textnum && theEnd == 0){
	alarm[1] = 200;
	theEnd = 1;
}