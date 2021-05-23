timer += .5;
tTimer += .5;
DrawSetCenter();
for(var i = 0;i < 6;i++){
	draw_text(456 / 2, 342 / 2 - 180 - (i * 50) + timer, text[i]);	
}
tTimer = clamp(tTimer, 0, 480);
draw_text(456 / 2, 342 / 2 - 180 - (6 * 50) + tTimer, text[6]);
DrawSetFormat();