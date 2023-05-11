///@function spawn_off_camera(direction,speed, faction)
///@param {index} direction
///@param {real} speed
///@param {index} faction
function creat_balas(_dir, _spd, _fac, _creator){
	
 var _gun_type = -1;	
if(argument_count > 3)_gun_type = argument[3];
	
//escolher o tipo de arma
switch(_gun_type){
	case powerups.three_bullets:
		var inst = instance_create_layer(x,y, "Instances", obj_Bala);
		initialise_bullet(_dir,_spd, _fac,inst);
		
	case powerups.two_bullets:
		audio_play_sound(sn_Tiro, 1, false);
		
		var _sep = 10;
		
		var inst = instance_create_layer(x+lengthdir_x(_sep,_dir+90),y+lengthdir_y(_sep,_dir+90), "Instances", obj_Bala);
		initialise_bullet(_dir,_spd, _fac, inst);
		
		var inst = instance_create_layer(x+lengthdir_x(_sep,_dir-90),y+lengthdir_y(_sep,_dir-90), "Instances", obj_Bala);
		initialise_bullet(_dir,_spd, _fac, inst);
		break;
		
	case powerups.four_bullets:
		audio_play_sound(sn_Tiro, 1, false);
		
		var _sep = 7, bullet_angle;
		var i = 0;
		repeat(4){
			bullet_angle = _dir + (i *90);
			var inst = instance_create_layer(x+lengthdir_x(_sep,bullet_angle),y+lengthdir_y(_sep,bullet_angle), "Instances", obj_Bala);
			initialise_bullet(bullet_angle,_spd, _fac, inst);
			i++;
		}
		break;
	case powerups.star_bullets:
		audio_play_sound(sn_Tiro, 1, false);
		
		var _sep = 7, bullet_angle;
		var i = 0;
		repeat(8){
			bullet_angle = _dir + (i *45);
			var inst = instance_create_layer(x+lengthdir_x(_sep,bullet_angle),y+lengthdir_y(_sep,bullet_angle), "Instances", obj_Bala);
			initialise_bullet(bullet_angle,_spd, _fac, inst);
			i++;
		}
		break;
	case powerups.laser_bullets:
		audio_play_sound(snd_laser, 1, false);
		var inst = instance_create_layer(x,y, "Instances", obj_Laser);
		initialise_bullet(_dir,_spd, _fac, inst);
		break;
	default:
		audio_play_sound(sn_Tiro, 1, false);
		var inst = instance_create_layer(x,y, "Instances", obj_Bala);
		initialise_bullet(_dir,_spd, _fac, inst);
		break;
	}
}