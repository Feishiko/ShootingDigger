if(instance_exists(oPlayer)){
	if(oPlayer.thruster == 0){
		instance_create_layer(random(room_width), room_height + 56, "Player", oEnemy4);
		alarm[3] = 260 - global.Level*2;	
	}
}