// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Death(who){
	audio_play_sound(souKillEnemy, 10, false);
	var surf = surface_create(who.sprite_width, who.sprite_height);
	surface_set_target(surf)
	draw_sprite(who.sprite_index, 0, 0, 0);
	surface_reset_target();
	for(var i = 0;i <= who.sprite_width;i += 6){
		for(var j = 0;j <= who.sprite_height;j += 6){
			var ins = instance_create_layer(x, y, "Effect", oBodypart){
			with(ins){
					sprite_index = sprite_create_from_surface(surf, i, j, 6, 6, false, false, 3, 3);
				}	
			}
		}
	}
	var ran = irandom_range(10,12);
	for(var i = 0;i <= ran;i++){
		var ins = instance_create_layer(x, y, "Effect", oBlood)
	}
	instance_destroy();
	surface_free(surf);
}