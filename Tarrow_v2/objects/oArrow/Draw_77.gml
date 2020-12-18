/// @description Player Teleportation
// You can write your code in this editor

//when the arrow collides with a wall, the player is teleported to the 
//arrow's position, the arrowsInAir variable is set to 0, and the arrow
// instance is destroyed
if(place_meeting(x+xSpeedArrow,y+ySpeedArrow,oWall) or (place_meeting(x+xSpeedArrow, y+ySpeedArrow, oSlope))){
	oPlayer.x = x;
	oPlayer.y = y;
	oBow.arrowsInAir = 0;
	instance_destroy();
	
}