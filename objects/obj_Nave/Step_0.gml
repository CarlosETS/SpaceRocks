 if(keyboard_check(ord("A"))){
	image_angle = image_angle + 5;
}
if(keyboard_check(ord("D"))){
	image_angle = image_angle - 5;
} 
if(keyboard_check(ord("W"))){
	motion_add(image_angle, 0.02);
	
	//Particulas EX
	exhaustCouter++;
	
	if(exhaustCouter >= 4){
		exhaustCouter = 0;
		var len = sprite_height*.4, 
			var _xx = x - lengthdir_x(len,image_angle),
			var _yy = y - lengthdir_y(len, image_angle);
  		with(obj_Particulas){		
			part_particles_create(partSys, _xx, _yy, partTypeExhaust, 1);
		}
	}
}

if(keyboard_check(ord("S"))){
	motion_add(image_angle, -0.02);
	
	//Particulas EX
	exhaustCouter++;
	
	if(exhaustCouter >= 4){
		exhaustCouter = 0;
		var len = sprite_height*.4, 
			var _xx = x - lengthdir_x(len,image_angle),
			var _yy = y - lengthdir_y(len, image_angle);
  		with(obj_Particulas){		
			part_particles_create(partSys, _xx, _yy, partTypeExhaust, 1);
		}
	}
}

if(keyboard_check_pressed(vk_space)){
	creat_balas(image_angle, balasSpd, faction, guns);
} 

move_wrap(true,true, sprite_width/2); 