//Camera
global.cameraX = 0;
global.cameraY = 0;
target = obj_Nave;

global.cameraWidth = 500;
global.cameraHeight = 500; 

view_enabled = true;
view_visible[0] = true;

camera_set_view_size(view_camera[0], global.cameraWidth, global.cameraHeight);
if(instance_exists(target)){
	global.cameraX = target.x - (global.cameraWidth/2);
	global.cameraY = target.y - (global.cameraHeight/2);
	
	global.cameraX = clamp(global.cameraX, 0, room_width-global.cameraWidth);
	global.cameraY = clamp(global.cameraY, 0, room_height-global.cameraHeight);
}

//Display
displayScale = 1.3;
displayWidth = displayScale*global.cameraWidth;
displayHeight = displayScale*global.cameraHeight;

window_set_size(displayWidth, displayHeight);
surface_resize(application_surface, displayWidth, displayHeight);

//GUI
display_set_gui_size(global.cameraWidth, global.cameraHeight);

alarm[0] = 1;
