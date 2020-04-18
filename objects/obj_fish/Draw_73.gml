/// @description speechbubble


if (food < 70 || oxygen < 70 || mainGameObject.cleaniness < 70) {
	draw_sprite(spr_bubble, 0, x, y - sprite_height);
	
	draw_set_font(font01);
	draw_set_color(c_black)
	if (food < 70) {
		draw_text(x+6, y - sprite_height + 5, "food");	
	}
	if (oxygen < 70) {
		draw_text(x+2, y - sprite_height + 13, "oxygen");	
	}
	if (mainGameObject.cleaniness < 70) {
		draw_text(x+6, y - sprite_height + 21, "dirty");	
	}
	draw_set_font(font0);
	draw_set_color(c_white)
	
}
