/// @description Create GUI
// You can write your code in this editor

//draw gui using selected font and horizontal and vertical alignments.
draw_set_font(menuFont);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

//create text of all items within the array of menuItems
for( var i = 0; i < menuItems; i++){

	var offset = 2;
	var txt = menu[i];
	if(menuCursor == i){
		txt = string_insert("> ", txt, 0);
		var col = c_red;
	
	}
	else{
		var col = c_black;
	}
	
	//spacing between each item and determining where on the screen the menu text will
	//be based on the offset and spacing variables
	var spacing = menuY - (menuItemHeight * i * 2);
	draw_set_color(c_green);
	draw_text(menuX - offset, spacing, txt);
	draw_text(menuX + offset, spacing, txt);
	draw_text(menuX, spacing - offset, txt);
	draw_text(menuX, spacing + offset, txt);
	draw_set_color(col);
	draw_text(menuX, spacing, txt);
}