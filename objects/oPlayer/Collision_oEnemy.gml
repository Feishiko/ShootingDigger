if(mudaTimer >= 120){
	with(other){
		instance_destroy();	
	}
	global.Life -= 1;	
	mudaTimer = 0;
}