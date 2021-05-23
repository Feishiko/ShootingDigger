if(instance_exists(oPlayer)){
	if(oPlayer.thruster == 0){
		instance_create_layer(random(room_width), room_height + 56, "Player", oEnemy1);
		alarm[0] = 50 - global.Level;
	}
}