/// @description Insert description here

if (isHovered) {
	draw_rectangle_colour(x, y, x + sprite_width, y + sprite_height, c_white, c_white, c_white, c_white, true);	
}

if (object_get_name(object_index) != "obj_resetCooldown") {
	draw_rectangle_colour(x, y + sprite_height + 5, x+ sprite_width, y + sprite_height + 15, c_white, c_white, c_white, c_white, true);	
	
	
	maxVal = 0;
	currentVal = 0;
	if (object_get_name(object_index) == "obj_food") {
		maxVal = 15;
		currentVal = mainGameObject.food_cooldown;
	} else if (object_get_name(object_index) == "obj_repair") {
		maxVal = 30;
		currentVal = obj_oxygenPump.cooldown;
	} else if (object_get_name(object_index) == "obj_clean") {
		maxVal = 20;
		currentVal = mainGameObject.cleaniness_cooldown;
	}
	
	width = x+sprite_width - x+1;
	
	targetX = x+1 + ((maxVal - currentVal) / (maxVal+1)) * width; 
	
	draw_rectangle_colour(x+1, y + sprite_height + 5,targetX, y + sprite_height + 15, c_green, c_green, c_green, c_green, false);	
}