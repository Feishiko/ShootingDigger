// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ToRoom(toRoom){
	if(!instance_exists(oFade)){
		var ins = instance_create_depth(0, 0, -100, oFade);
		ins.toRoom = toRoom;
	}
}