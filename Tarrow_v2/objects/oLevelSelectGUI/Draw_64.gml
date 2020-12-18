/// @description Insert description here
// You can write your code in this editor

draw_set_font(levelSelectFont);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

for( var i = 0; i < levelSelectItems; i++){

	var offset = 2;
	var txt = levelSelect[i];
	if(levelSelectCursor == i){
		txt = string_insert("> ", txt, 0);
		var col = c_blue;
	
	}
	else{
		var col = c_black;
	}
	
	var spacing = levelSelectY - (levelSelectItemHeight * i * 2);
	draw_set_color(c_green);
	draw_text(levelSelectX - offset, spacing, txt);
	draw_text(levelSelectX + offset, spacing, txt);
	draw_text(levelSelectX, spacing - offset, txt);
	draw_text(levelSelectX, spacing + offset, txt);
	draw_set_color(col);
	draw_text(levelSelectX, spacing, txt);
}