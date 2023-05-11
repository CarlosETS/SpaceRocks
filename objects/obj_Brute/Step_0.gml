event_inherited();

image_index = HP - 1;


//se o player esta na area de detecção
if(!instance_exists(obj_Nave)) exit; // se o player existe

if(point_distance(x,y, obj_Nave.x, obj_Nave.y) < 250){
	//vira em direção ao player e atira
	var new_angle = point_direction(x,y, obj_Nave.x, obj_Nave.y);
	//virar e olhar para o player
	new_angle = image_angle - angle_difference(image_angle, new_angle);
	image_angle = lerp(image_angle, new_angle, 0.1);
	direction = image_angle;

	speed += 0.01;

}else {//Sem mudanças
	speed = lerp(speed, originalspeed, 0.1);
}

