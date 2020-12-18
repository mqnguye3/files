layer_destroy_instances("LevelLayer");

for(i = 0; i < array_height_2d(levelArray); i++){
	for(j = 0; j < array_length_2d(levelArray, i); j++){
		
		currentChar = levelArray[i,j];
		show_debug_message(currentChar);
		object = objCreation(currentChar);
		
		if(object == undefined){
			continue;	
		}

		 test = instance_create_layer(i * spriteWidth, j * spriteHeight, "LevelLayer", object);
		 
		 show_debug_message(string(test.x));
		
	}
}

return true;	