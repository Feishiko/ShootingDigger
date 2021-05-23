hp -= 1;
audio_play_sound(souHitEnemy, 1, false);
instance_create_layer(x, y, "Effect", oHitWave);
with(other){
	instance_destroy();	
}