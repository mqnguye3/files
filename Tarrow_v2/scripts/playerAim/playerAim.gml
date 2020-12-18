if(playerAiming){
	if (mouse_y < oPlayer.y){				
		camera_set_view_pos(cam, x, y-100);
	}
	
	else {
		camera_set_view_pos(cam, x, y+100);
	}
}

else if(!playerAiming){
	playerAiming = false;
	camera_set_view_pos(cam, x, y);
}
