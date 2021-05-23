if(hp <= 0){
	global.Kill += 1;
	var ran = irandom(360);
	for(var i = 0;i <= 360;i += 30 - (global.Diffcults * 10)){
		BulletCreate(x, y, irandom(2), ran + i, 2.5);	
	}
	Death(id);
}
if(y < -20){
	instance_destroy();	
}