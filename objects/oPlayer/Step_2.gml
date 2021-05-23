image_angle = direction;
attackTimer++;
dashTimer++;
mudaTimer++;
global.Timer += delta_time;
image_alpha = mudaTimer / 240 + 0.5;
//Death
if(global.Life <= 0){
	Death(id);	
}
if(thruster == 0){
	if(dashTimer >= 140){
		direction = LookAt(mouse_x, mouse_y);

		if(mouse_check_button(mb_left)){
			attack = 0;
			speed = myspeed;
		}else if(mouse_check_button(mb_right)){
			attack = 1;
			speed = myspeed-1;
		}else{
			attack = -1;
			speed = myspeed;
		}

		if(attack == 0 && attackTimer >= 10 - global.Power){
			for(var i = 0;i <= global.Power;i++){
				var ins = instance_create_layer(x, y, "Bullet", oBullet);
				ins.direction = direction + random_range(global.Power * 10 * -1, global.Power * 10);
				ins.speed = myspeed + 3;
			}
			attackTimer = 0;
		}

		if(attack == 1 && attackTimer >= 10 - global.Power){
			for(var i = 0;i <= global.Power;i++){
				var ins = instance_create_layer(x, y, "Bullet", oBullet);
				ins.direction = direction + random_range(global.Power * 4 * -1, global.Power * 4);
				ins.speed = myspeed - 1 + 3;
			}
			attackTimer = 0;
		}
	}else{
		direction = 270;
		speed += 0.04;	
	}
}
//Thruster
if(thruster == 1){
	thrusterTimer++;
	if(thrusterTimer == 390){
		speed = 3;
		audio_play_sound(souStagePassed, 50, false);
		global.Life += 2 - global.Diffcults;
		if(room = rmStage1){
			ToRoom(rmStage2);
		}else if(room = rmStage2){
			ToRoom(rmStage3);	
		}else if(room = rmStage3){
			ToRoom(rmEnd);	
		}
		global.Power += 1;
	}
	if(thrusterTimer >= 180){
		direction = 270;
		speed += 0.04;	
	}else{
		speed = 0;
		y -= 2;
		x += random_range(-1, 1);
		y += random_range(-1, 1);
	}
}