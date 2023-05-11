//Particulas EX
exhaustCouter++;
	
if(exhaustCouter >= 4){
	exhaustCouter = 0;
	var len = sprite_height*.4, 
		var _xx = x - lengthdir_x(len,image_angle),
		var _yy = y - lengthdir_y(len, image_angle);
  	with(obj_Particulas){		
		part_particles_create(partSys, _xx, _yy, partTypeEnemyExhaust, 1);
	}
} 