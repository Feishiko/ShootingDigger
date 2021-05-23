if(instance_exists(oPlayer)){
	if(oPlayer.thruster == 0){
		instance_create_layer(random(room_width), room_height + 56, "Player", oEnemy2);
		alarm[1] = 180 - global.Level*4;
	}
}