var len = 500;

draw_line_width(x,y, 
	x+lengthdir_x(len, direction), y+lengthdir_y(len, direction),2);
 
 //Draw collision
 var inst = collision_line(x,y, x+lengthdir_x(len, direction), 
	y+lengthdir_y(len, direction),obj_faction, false, false);
 
 if(inst != noone){
	if(inst.faction != faction){
		with(inst){
			if(!immuneLaser) event_perform(ev_other,ev_user1);
		}
	}
 }