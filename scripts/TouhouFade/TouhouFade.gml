// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function TouhouFade(toRoom){
	if(!instance_exists(oTouhouFade)){
		var ins = instance_create_layer(0, 0, "Bullet", oTouhouFade);
		ins.toRoom = toRoom;
	}
}