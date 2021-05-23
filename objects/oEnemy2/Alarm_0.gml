if(instance_exists(oPlayer)){
	BulletCreate(x, y, 0, LookAt(oPlayer.x, oPlayer.y), 2.1);
}
alarm[0] = 130 - global.Diffcults * 30;