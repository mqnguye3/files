/// @description Initialize variables for GUI
// You can write your code in this editor

guiWidth = display_get_gui_width();
guiHeight = display_get_gui_width();
guiMarginX = 200;
guiMarginY = 800;

menuX = guiWidth;
menuY = guiHeight - guiMarginY;
menuXTarget = guiWidth - guiMarginX;
menuSpeed = 20;
menuFont = fMenu;
menuItemHeight = font_get_size(fMenu);
menuCommitted = -1;
menuControl = true;

//all selectable menu items
menu[2] = "Start Game";
menu[1] = "Tutorial";
menu[0] = "Quit";

//cursor begins at "Start Game"
menuCursor = 2;
menuItems = 3;
