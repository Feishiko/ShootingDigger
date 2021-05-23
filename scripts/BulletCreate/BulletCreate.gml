// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BulletCreate(dx, dy, index, dir, sped){
	var ins = instance_create_layer(dx, dy, "Bullet", oEnemyBullet);
	ins.image_index = index;
	ins.speed = sped;
	ins.direction = dir;
}