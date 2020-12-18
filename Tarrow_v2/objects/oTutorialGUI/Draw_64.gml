/// @description Draw GUI
// You can write your code in this editor

//Much of this code is repurposed from oMenu, more in depth comments are there.
draw_set_font(tutorialFont);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

for( var i = 0; i < tutorialItems; i++){

	var offset = 2;
	var txt = tutorial[i];
	var col = c_black;
	
	var spacing = tutorialY - (tutorialItemHeight * i * 2);
	draw_set_color(c_green);
	draw_text(tutorialX - offset, spacing, txt);
	draw_text(tutorialX + offset, spacing, txt);
	draw_text(tutorialX, spacing - offset, txt);
	draw_text(tutorialX, spacing + offset, txt);
	draw_set_color(col);
	draw_text(tutorialX, spacing, txt);
}