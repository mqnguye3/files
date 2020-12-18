/// @description Update Camera Position
// You can write your code in this editor

//Camera Position Updates based on whether or not the player OR an arrow has crossed the boundary
//of the screen. The arrow has priority over the player when being shown by the camera.

//y updating
if(instance_exists(oArrow) && (camera_get_view_y(cam) + 28 > oArrow.y)){
	y -= 1080;	
	camera_set_view_pos(cam,x,y);
}

else if(instance_exists(oArrow) && (camera_get_view_y(cam) +1108 < oArrow.y)){
	y += 1080;
	camera_set_view_pos(cam,x,y);
}

else if(!instance_exists(oArrow) && instance_exists(oPlayer) && (camera_get_view_y(cam) +28 > oPlayer.y)){
	y -= 1080;	
	camera_set_view_pos(cam,x,y);
}

else if(!instance_exists(oArrow) && instance_exists(oPlayer) && (camera_get_view_y(cam) +1108 < oPlayer.y)){
	y += 1080;
	camera_set_view_pos(cam,x,y);
}

//x updating
if(instance_exists(oArrow) && (camera_get_view_x(cam) > oArrow.x)){
	x -= 1920;	
	camera_set_view_pos(cam,x,y);
}

else if(instance_exists(oArrow) && (camera_get_view_x(cam) +1920 < oArrow.x)){
	x += 1920;
	camera_set_view_pos(cam,x,y);
}

else if(!instance_exists(oArrow) && instance_exists(oPlayer) && (camera_get_view_x(cam) > oPlayer.x)){
	x -= 1920;	
	camera_set_view_pos(cam,x,y);
}

else if(!instance_exists(oArrow) && instance_exists(oPlayer) && (camera_get_view_x(cam) +1920 < oPlayer.x)){
	x += 1920;
	camera_set_view_pos(cam,x,y);
}

if(mouse_check_button(mb_right) && !oBow.arrowsInAir){
	playerAiming = true;
	playerAim();
	
}

else{
	playerAiming = false;
	playerAim();	
}