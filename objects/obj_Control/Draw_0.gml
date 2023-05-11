draw_text(8, 8, "Score:" + string(global.player_score));

draw_set_halign(fa_right);
draw_text(room_width - 8, 8, "High Score:" + string(global.hscore));

draw_set_halign(fa_left);

_x = (room_width/2) - ((global.player_lifes-1) * 64);
repeat(global.player_lifes){
	draw_sprite_ext(spr_Bat,0,_x, room_height-32,
	0.75,0.75,0,c_white,0.5);
	_x += 128; 
}