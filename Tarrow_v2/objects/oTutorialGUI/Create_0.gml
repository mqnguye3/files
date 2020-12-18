/// @description Intialize variables Tutorial GUI
// You can write your code in this editor


guiWidth = display_get_gui_width();
guiHeight = display_get_gui_width();
guiMargin = 800;

tutorialX = guiWidth;
tutorialY = guiHeight - guiMargin;
tutorialFont = fMenu;
tutorialItemHeight = font_get_size(fMenu);

//array for all text that is to be shown
tutorial[4] = "Welcome to Tarrow, the world of Teleport Arrows."
tutorial[3] = "Left click to shoot an arrow."
tutorial[2] = "Right click to shoot a slower arrow."
tutorial[1] = "Press 'R' to go back to the menu at any time."
tutorial[0] = "Proceed to the right in order to start the first level!"

tutorialItems = 5;