event_inherited();

//se o player esta na area de detecção
if(!instance_exists(obj_Nave)) exit; // se o player existe

if(point_distance(x,y, obj_Nave.x, obj_Nave.y)< 200){
	//vira em direção ao player e atira
	var new_angle = point_direction(x,y, obj_Nave.x, obj_Nave.y);
	//virar e olhar para o player
	new_angle = image_angle - angle_difference(image_angle, new_angle);
	image_angle = lerp(image_angle, new_angle, 0.1);
	
	//atirar
	bulletcounter ++;
	if(bulletcounter >= 60){
		creat_balas(image_angle, 4, faction, id);
		bulletcounter = 0;
	}
}else {//Sem mudanças
	image_angle = lerp(image_angle, direction, 0.1);
}

