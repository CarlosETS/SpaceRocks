if(room == rm_Game1)
{
 	spawn_off_camera(obj_Meteoro,20);
	
	spawn_off_camera(obj_Raider,6);
	spawn_off_camera(obj_Hunter,4);
	spawn_off_camera(obj_Brute,2);
	
	if(audio_is_playing(sn_MusicadeFundo)){
		audio_stop_sound(sn_MusicadeFundo);
	}
	audio_play_sound(sn_MusicadeFundo, 2, true);
	
	
	alarm[0] = 60;
}
if(room == rm_Menu){
	audio_stop_sound(sn_MusicadeFundo);
}
