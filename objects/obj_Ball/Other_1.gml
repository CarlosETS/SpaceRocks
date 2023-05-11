audio_play_sound(snd_Bouce,1,false); 
	
if(bbox_left < 0 or bbox_right > room_width){
	x = clamp(x, 0+sprite_xoffset, room_width - sprite_xoffset);
	hspeed = hspeed * -1;
}
if(bbox_top < 0){
	y = clamp(y, 0+sprite_yoffset, room_height - sprite_yoffset);
	vspeed *= -1; 
}
if(bbox_bottom > room_height){
	global.player_lifes -=1;
	instance_destroy();
	
	if(global.player_lifes <= 0){
		obj_Control.gameover = true;
		if(global.player_score > global.hscore){
			global.hscore = global.player_score;
		}
	}else{
		instance_create_layer(xstart, ystart, "Instances", obj_Ball);	
	}
	
}
