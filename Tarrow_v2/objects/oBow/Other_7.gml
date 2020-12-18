/// @description creates arrow after animation finishes
// You can write your code in this editor
//creates an arrow instance shooting at the angle of the bow
	with(instance_create_layer(x+5,y-6,"LevelLayer", oArrow)){
		
		speed = 10;
		if(other.sprite_index == sBowLeft){
			direction = other.image_angle + 180;	
		}
		else{
			direction = other.image_angle;
		}
		image_angle = direction;
	}