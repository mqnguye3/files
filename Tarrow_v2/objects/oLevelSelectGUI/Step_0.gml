/// @description Insert description here
// You can write your code in this editor

levelSelectX += (levelSelectXTarget - levelSelectX) / levelSelectSpeed;

if(levelSelectControl){
	if(keyboard_check_pressed(vk_up)){
		levelSelectCursor++;
		if (levelSelectCursor >= levelSelectItems){
			levelSelectCursor = 0;	
		}
	}
	if(keyboard_check_pressed(vk_down)){
		levelSelectCursor--;
		if (levelSelectCursor < 0){
			levelSelectCursor = 2;	
		}
	}
	if(keyboard_check_pressed(vk_enter)){
		levelSelectXTarget = guiWidth + 500;
		levelSelectCommitted = levelSelectCursor;
		levelSelectControl = false;
	}
}

if((levelSelectX > guiWidth + 150) && (levelSelectCommitted != -1)){
	switch (levelSelectCommitted){
		case 2: default: slideTransition(TRANS_MODE.GOTO, Tutorial);
		break;
		case 1: 
		slideTransition(TRANS_MODE.GOTO, Level1);
		break;
		case 0: slideTransition(TRANS_MODE.GOTO, Level2);
		break;
	}
}