menuX += (menuXTarget - menuX) / menuSpeed;

//while we have menu control, player can use arrow key up and down to move through options
//and enter to select an option
if(menuControl){
	/*if(keyboard_check_pressed(vk_up)){
		menuCursor++;
		if (menuCursor >= menuItems){
			menuCursor = 0;	
		}
	}*/
	if point_in_rectangle(mouse_x, mouse_y, menuX-140, menuY - (menuItemHeight  * 2), menuX-140 + string_width("Quit"), (menuY - (menuItemHeight  * 2)) + string_height("Quit"))
	{
		menuCursor = 0;
		if mouse_check_button_pressed(mb_left)
		{
			menuXTarget = guiWidth + 400;
			menuCommitted = menuCursor;
			menuControl = false;
		}
	}
	
	else if point_in_rectangle(mouse_x, mouse_y, menuX-220, menuY - (menuItemHeight  * 4.2), menuX-220 + string_width("Tutorial"), (menuY - (menuItemHeight  * 4.2))  + string_height("Tutorial"))
	{
		menuCursor = 1;
		if mouse_check_button_pressed(mb_left)
		{
			menuXTarget = guiWidth + 400;
			menuCommitted = menuCursor;
			menuControl = false;
		}
	}
	
	else if point_in_rectangle(mouse_x, mouse_y, menuX-350, menuY - (menuItemHeight  * 6.2), menuX-350 + string_width("Start Game"), (menuY - (menuItemHeight  * 6.2)) + string_height("Start Game"))
	{
		menuCursor = 2;
		if mouse_check_button_pressed(mb_left)
		{
			menuXTarget = guiWidth + 400;
			menuCommitted = menuCursor;
			menuControl = false;
		}
	}
	/*if(keyboard_check_pressed(vk_down)){
		menuCursor--;
		if (menuCursor < 0){
			menuCursor = 2;	
		}
	}
	if(keyboard_check_pressed(vk_enter)){
		menuXTarget = guiWidth + 400;
		menuCommitted = menuCursor;
		menuControl = false;
	}*/
}

//Switch statement for if we have committed to an option, based on which optiion we last
//selected we use the TRANS_MODE to go to another room, or game_end() if we selected
//quit game.
if((menuX > guiWidth + 250) && (menuCommitted != -1)){
	switch (menuCommitted){
		case 2: default: slideTransition(TRANS_MODE.GOTO, Level2);
		break;
		case 1: slideTransition(TRANS_MODE.GOTO, Tutorial);
		break;
		case 0: game_end();
		break;
	}
}