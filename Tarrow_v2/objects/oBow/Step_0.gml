/// @description Calculate Bow Angle and Shoot Arrows
// You can write your code in this editor

//Center bow onto player
x = oPlayer.x;
y = oPlayer.y;

//Bow Rotates while following the mouse cursor
if ( x < mouse_x){
	sprite_index = aBowRight;	
	image_speed = 0;
	image_angle = point_direction(x,y,mouse_x,mouse_y);
}
else{
	sprite_index = aBowLeft;
	image_speed = 0;
	image_angle = point_direction(x,y,mouse_x,mouse_y) - 180;
}




//Arrow Delay is reduced by one every frame
arrowDelay = arrowDelay - 1;

//check to see if mouse button left was clicked and whether or not our 
//arrow preventing variables are true
if(mouse_check_button(mb_left) && !arrowsInAir && (arrowDelay < 0) ){
	arrowsInAir = 1;
	arrowDelay = 50;
	image_index = 1;
	
	
}


//same arrow checks but shoots a slower arrow.


//Animation
if(image_index > 0){
	image_speed = 1.5;
}
 else{
	 image_speed = 0;
 }
 
 
while (mouse_x == mouse_x && mouse_y == mouse_y){
	 idle_timer -=1;
	 if(idle_timer <1){
	 idle_timer = 0
	 sprite_index = pointer_null;
	}
 }
 
 if(mouse_x != mouse_x || mouse_y != mouse_y){
	 idle_timer = 30;
 }