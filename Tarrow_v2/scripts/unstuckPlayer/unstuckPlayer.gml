//forcing the player out of walls
//checks for nearest non-wall space
if(place_meeting(x,y,oWall)){
	for(var i =0; i < 1000;	++i){
		//right
		if(!place_meeting(x+i,y,oWall)){
			x+=i;
			break;
		}
		//down
		if(!place_meeting(x,y+i,oWall)){
			y+=i;
			break;
		}
		//left
		if(!place_meeting(x-i, y, oWall)){
			x-=i;
			break;
		}
		//up
		if(!place_meeting(x, y-i, oWall)){
			y-=i;
			break;
		}
		//upper right
		if(!place_meeting(x+i, y-i, oWall)){
			y-=i;
			x+=i
			break;
		}
		//bottom left
		if(!place_meeting(x-i, y+i, oWall)){
			y+=i;
			x-=i
			break;
		}
		//bottom right
		if(!place_meeting(x+i, y+i, oWall)){
			y+=i;
			x+=i
			break;
		}
		//upper left
		if(!place_meeting(x-i, y-i, oWall)){
			y-=i;
			x-=i
			break;
		}
		
	}
}

else if(place_meeting(x,y,oSlope)){
	for(var i =0; i < 1000;	++i){
		//right
		if(!place_meeting(x+i,y,oSlope)){
			x+=i;
			break;
		}
		//down
		if(!place_meeting(x,y+i,oSlope)){
			y+=i;
			break;
		}
		//left
		if(!place_meeting(x-i, y, oSlope)){
			x-=i;
			break;
		}
		//up
		if(!place_meeting(x, y-i, oSlope)){
			y-=i;
			break;
		}
		//upper right
		if(!place_meeting(x+i, y-i, oSlope)){
			y-=i;
			x+=i
			break;
		}
		//bottom left
		if(!place_meeting(x-i, y+i, oSlope)){
			y+=i;
			x-=i
			break;
		}
		//bottom right
		if(!place_meeting(x+i, y+i, oSlope)){
			y+=i;
			x+=i
			break;
		}
		//upper left
		if(!place_meeting(x-i, y-i, oSlope)){
			y-=i;
			x-=i
			break;
		}
		
	}
}

else if(place_meeting(x,y,oBounce)){
	for(var i =0; i < 1000;	++i){
		//right
		if(!place_meeting(x+i,y,oBounce)){
			x+=i;
			break;
		}
		//down
		if(!place_meeting(x,y+i,oBounce)){
			y+=i;
			break;
		}
		//left
		if(!place_meeting(x-i, y, oBounce)){
			x-=i;
			break;
		}
		//up
		if(!place_meeting(x, y-i, oBounce)){
			y-=i;
			break;
		}
		//upper right
		if(!place_meeting(x+i, y-i, oBounce)){
			y-=i;
			x+=i
			break;
		}
		//bottom left
		if(!place_meeting(x-i, y+i, oBounce)){
			y+=i;
			x-=i
			break;
		}
		//bottom right
		if(!place_meeting(x+i, y+i, oBounce)){
			y+=i;
			x+=i
			break;
		}
		//upper left
		if(!place_meeting(x-i, y-i, oBounce)){
			y-=i;
			x-=i
			break;
		}
		
	}
}


