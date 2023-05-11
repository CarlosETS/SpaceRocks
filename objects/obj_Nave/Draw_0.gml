draw_self();

//desenha as armas
if(guns != -1) draw_sprite_ext(spr_PowerUp_strip, guns,x,y, image_xscale, image_yscale,image_angle,image_blend,image_alpha);

//desenha  a invencibilidade
if(invincible){
	var alpha = min(1,alarm[1]/60);
	draw_sprite_ext(spr_PowerUp_strip,powerups.invincible,x,y, image_xscale, 
	image_yscale,image_angle,image_blend,alpha);
}