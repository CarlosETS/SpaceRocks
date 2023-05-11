
if(irandom_range(0,5) ==0){
	instance_create_layer(x,y, "Instances", obj_Powerup);
}
score += 10;
audio_play_sound(sn_Explosao, 1, false);
instance_destroy();

var _xx =x, _yy = y;
if(sprite_index == spr_MeteoroG){
	global.cameraShake = 4;
	with(obj_Particulas) part_particles_create(partSys,_xx,_yy, partTypeAsteroidesDebris,12);
	repeat(2){
		var novo = instance_create_layer(x,y,"Instances",obj_Meteoro);
		novo.sprite_index = spr_MeteoroM;
	}
} else if(sprite_index == spr_MeteoroM){
	global.cameraShake = 2;
	with(obj_Particulas) part_particles_create(partSys,_xx,_yy, partTypeAsteroidesDebris,8);
	
	repeat(2){
		var novo = instance_create_layer(x,y,"Instances",obj_Meteoro);
		novo.sprite_index = spr_MeteoroP ;
	}
}else{
	global.cameraShake = 1;
	with(obj_Particulas) part_particles_create(partSys,_xx,_yy, partTypeAsteroidesDebris,4);
}
