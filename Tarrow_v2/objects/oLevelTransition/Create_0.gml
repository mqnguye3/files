/// @description Insert description here
// You can write your code in this editor

totalWidth = display_get_gui_width();
totalHeight = display_get_gui_height();
enum TRANS_MODE{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO
	
}

mode = TRANS_MODE.INTRO;
percent = 1;
target = room;