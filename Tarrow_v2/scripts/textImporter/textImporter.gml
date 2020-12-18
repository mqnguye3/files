
levelFile = working_directory + "\\levels.txt";

if (file_exists(levelFile)){
	
	fileText = file_text_open_read(levelFile);
	
	tempArray = -1;
	currentRow = 0;
	
	while(!file_text_eof(fileText)){
		
		currentLine = file_text_read_string(fileText);
		
		for(i = string_length(currentLine) - 1; i >= 0; i--) {
			
			tempArray[i,currentRow] = string_char_at(currentLine, i+1);
		}
		currentRow++;
		file_text_readln(fileText);
	}
	levelArray = tempArray;
	file_text_close(fileText);	
}

else{
	show_error("File:" + string(levelFile) +  "not found", true);
	return false;
}
	return true;

