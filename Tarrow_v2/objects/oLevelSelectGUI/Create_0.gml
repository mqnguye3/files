/// @description Insert description here
// You can write your code in this editor
guiWidth = display_get_gui_width();
guiHeight = display_get_gui_width();
guiMarginY = 800;
guiMarginX = 200;

levelSelectX = guiWidth;
levelSelectY = guiHeight - guiMarginY;
levelSelectXTarget = guiWidth - guiMarginX;
levelSelectSpeed = 20;
levelSelectFont = fMenu;
levelSelectItemHeight = font_get_size(fMenu);
levelSelectCommitted = -1;
levelSelectControl = true;

levelSelect[2] = "Tutorial";
levelSelect[1] = "Level 1";
levelSelect[0] = "Level 2";

levelSelectCursor = 2;
levelSelectItems = 3;