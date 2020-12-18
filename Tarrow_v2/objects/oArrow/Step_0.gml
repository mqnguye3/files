/// @description Calculate Arrow Position and Angle
// You can write your code in this editor

//calculate radian using y and x speed vectors
radian = arctan2(ySpeedArrow, xSpeedArrow);


//check image angles to see whether we add or subtract radian to simulate
//arrow curve due to gravity
if(image_angle >= 90 && image_angle < 270 && maxRotation < 90){

	image_angle += radian*1.3;
	maxRotation += 1.4;
}
else if(maxRotation <90){
	image_angle -= radian*1.3;	
	maxRotation += 1.4
}


if(place_meeting(x, y + 1.01*ySpeedArrow, oBounce) || place_meeting(x+xSpeedArrow, y, oBounce) || place_meeting(x+xSpeedArrow, y+ySpeedArrow, oBounce)){
	
	if(image_angle >= 90 && image_angle <270){
		image_angle = 125
		
		if(ySpeedArrow > 5){
			ySpeedArrow = -(0.1*ySpeedArrow)
		}
		else{
			ySpeedArrow = -ySpeedArrow;	
		}
		
	}
	else{
		if(ySpeedArrow > 5){
			ySpeedArrow = -(0.1*ySpeedArrow)
		}
		else{
			ySpeedArrow = -ySpeedArrow;	
		}
		
		image_angle = 45;
	}
	maxRotation = 0;
}

//update positions based on x and y speed and then update y speed 
//based on gravity
y = y + ySpeedArrow;
if( ySpeedArrow < 20){
	ySpeedArrow = ySpeedArrow + grav;
}
x = x + xSpeedArrow;








