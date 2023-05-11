if(keyboard_check_pressed(vk_enter)){
	switch (room){
		case rm_StartGame1:
			room_goto(rm_Game1);
			break; 
		case rm_WinGame1:
			room_goto(rm_Game1);
		case rm_LoseGame1:
			room_goto(rm_Game1);
			break;
	} 

}
if(keyboard_check_pressed(vk_escape)){
	switch (room){
		case rm_StartGame1:
		case rm_WinGame1:
		case rm_LoseGame1:
			room_goto(rm_Menu);
			break;
	} 

}


	
 if(room == rm_Game1)
 {
	 if(score >= 1000)
	 {
	 room_goto(rm_WinGame1);
	 }
	if(lives <= 0)
	{
	room_goto(rm_LoseGame1);
	audio_play_sound(sn_Derrota, 1, false);
	}
 }
	