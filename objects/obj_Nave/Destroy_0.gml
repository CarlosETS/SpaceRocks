lives -= 1;

with (obj_Game1){
	alarm[1] = room_speed;	
}

audio_play_sound(sn_Explosao, 1, false);

var _xx = x, _ib = c_aqua,
var _yy = y;
with(obj_Particulas){		
	part_particles_create_color(partSys, _xx, _yy, partTypeNaveDebris,_ib, 10);
} 