if(x > 0 + sprite_xoffset + spd){
	if keyboard_check(ord("A")){
		x = x-spd; 
	}
}
if(x < room_width - sprite_xoffset - spd){
	if keyboard_check(ord("D")){
		x = x+spd; 
	}
}