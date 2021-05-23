timer++;
if(instance_exists(oPlayer)){
	if(global.Kill >= 10 && global.Level == 1){
		global.Level = 2;
		audio_play_sound(souLevelUp, 20, false);
		Textbox("Level " + string(global.Level));
	}
	if(global.Kill >= 20 && global.Level == 2){
		global.Level = 3;
		audio_play_sound(souLevelUp, 20, false);
		Textbox("Level " + string(global.Level));
		alarm[1] = 220 - global.Level;
	}
	if(global.Kill >= 30 && global.Level == 3){
		global.Level = 4;
		audio_play_sound(souLevelUp, 20, false);
		Textbox("Level " + string(global.Level));
	}
	if(global.Kill >= 40 && global.Level == 4){
		global.Level = 5;
		audio_play_sound(souLevelUp, 20, false);
		Textbox("Level " + string(global.Level));
	}
	if(global.Kill >= 50 && global.Level == 5){
		global.Level = 6;
		audio_play_sound(souLevelUp, 20, false);
		Textbox("Thruster is already");
		with(oEnemy){
			instance_create_layer(x, y, "Effect", oHitWave);
			instance_destroy();	
		}
		with(oEnemyBullet){
			instance_create_layer(x, y, "Effect", oHitWave);
			instance_destroy();
		}
		oPlayer.thruster = 1;
	}
	if(global.Kill >= 70 && global.Level == 6){
		global.Level = 7;
		audio_play_sound(souLevelUp, 20, false);
		Textbox("Level " + string(global.Level));	
	}
	if(global.Kill >= 90 && global.Level == 7){
		global.Level = 8;
		audio_play_sound(souLevelUp, 20, false);
		Textbox("Level " + string(global.Level));	
	}
	if(global.Kill >= 110 && global.Level == 8){
		global.Level = 9;
		audio_play_sound(souLevelUp, 20, false);
		Textbox("Level " + string(global.Level));	
	}
	if(global.Kill >= 130 && global.Level == 9){
		global.Level = 10;
		audio_play_sound(souLevelUp, 20, false);
		Textbox("Level " + string(global.Level));	
	}
	if(global.Kill >= 150 && global.Level == 10){
		global.Level = 11;
		audio_play_sound(souLevelUp, 20, false);
		Textbox("Thruster is already");
		with(oEnemy){
			instance_create_layer(x, y, "Effect", oHitWave);
			instance_destroy();	
		}
		with(oEnemyBullet){
			instance_create_layer(x, y, "Effect", oHitWave);
			instance_destroy();
		}
		oPlayer.thruster = 1;
	}
	if(global.Kill >= 180 && global.Level == 11){
		global.Level = 12;
		audio_play_sound(souLevelUp, 20, false);
		Textbox("Level " + string(global.Level));	
	}
	if(global.Kill >= 210 && global.Level == 12){
		global.Level = 13;
		audio_play_sound(souLevelUp, 20, false);
		Textbox("Level " + string(global.Level));	
	}
	if(global.Kill >= 240 && global.Level == 13){
		global.Level = 14;
		audio_play_sound(souLevelUp, 20, false);
		Textbox("Level " + string(global.Level));	
	}
	if(global.Kill >= 270 && global.Level == 14){
		global.Level = 15;
		audio_play_sound(souLevelUp, 20, false);
		Textbox("Thruster is already");
		with(oEnemy){
			instance_create_layer(x, y, "Effect", oHitWave);
			instance_destroy();	
		}
		with(oEnemyBullet){
			instance_create_layer(x, y, "Effect", oHitWave);
			instance_destroy();
		}
		oPlayer.thruster = 1;
	}
	switch(timer){
		case 440 : {
			if(global.Level >= 3){
				alarm[1] = 180 - global.Level*4;	
			}
			if(global.Level >= 6){
				alarm[2] = 80 - global.Level*2;	
			}
			if(global.Level >= 11){
				alarm[3] = 260 - global.Level*2;	
			}
			alarm[0] = 50 - global.Level;
			Textbox("Level " + string(global.Level));
		}
	}
}
if(global.Life <= 0){
	audio_stop_all();	
}
if(global.Life <= 0 && !instance_exists(oBodypart)){
	ToRoom(rmStart);	
}