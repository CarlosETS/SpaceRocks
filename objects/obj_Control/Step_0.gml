if (instance_number(obj_Breack) <=0){
	room_restart();
}

if (gameover == true){
	if keyboard_check_pressed(vk_anykey){
		room_restart();
		global.player_score = 0;
		global.player_lifes = 3;
		gameover = false;
		audio_play_sound(snd_Click,0,false); 
	}
}
if keyboard_check(vk_backspace){
	room_goto(rm_Menu);
}

