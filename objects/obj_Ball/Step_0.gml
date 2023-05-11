if(go == false){
	if keyboard_check_pressed(vk_space){
		direction =irandom_range(45,135);
		speed = spd;
		go =true;
		audio_play_sound(snd_Click,1,false); 
	}
}
if(!go){
	x = obj_Bat.x;
}
