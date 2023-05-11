audio_play_sound(sn_Explosao, 1, false);

switch(object_index){
	case obj_Raider: score += 15; break;
	case obj_Hunter: score += 30; break;
	case obj_Brute: score += 60; break;
}

global.cameraShake = 4;

if(irandom_range(0,1) ==0){
	instance_create_layer(x,y, "Instances", obj_Powerup);
}

var _xx = x, _ib = c_red,
var _yy = y;
with(obj_Particulas){		
	part_particles_create_color(partSys, _xx, _yy, partTypeNaveDebris,_ib, 10);
}