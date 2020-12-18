/// @description Calculate player position and collisions
// You can write your code in this editor

//has control is a level transition variable
if(hascontrol){
	if(ySpeed <= 10){
	ySpeed = ySpeed + grav;
	}

x = x + xSpeed;



//check to see if player collides with wall while moving
if(place_meeting(x , y + ySpeed, oWall)){
	while(!place_meeting(x, y + sign(ySpeed), oWall)){
			y = y + sign(ySpeed);
	}
	unstuckPlayer();
	ySpeed = 0;
}

else if(place_meeting(x , y+1, oSlope) || place_meeting(x+1, y, oSlope) || place_meeting(x-0.01,y,oSlope)){
			
			y = y + 0.8;
			x = x - 1;
	
	ySpeed = 0;
}





unstuckPlayer();
}

if(place_meeting(x, y + ySpeed, oBounce)){
	ySpeed = -(ySpeed);
	unstuckPlayer();
	

}
y = y + ySpeed;


while (mouse_x == mouse_x && mouse_y == mouse_y){
	 idle_timer -=1;
	 if(idle_timer <1){
	 idle_timer = 0
	 sprite_index = idle;
	}
 }
 
 if(mouse_x != mouse_x || mouse_y != mouse_y){
	 idle_timer = 30;
 }