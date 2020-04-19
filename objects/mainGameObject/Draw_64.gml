/// @description Insert description here

draw_set_font(font0);
draw_text(700, 20, "You have " + string(current_fishes) + " fishes");
draw_text(700, 60, "You have " + string(resource) + " points");
draw_set_font(font01);
draw_text(33, 750, "Press ALT to show debug information");
draw_text(795, 750, "Press M to mute/unmute music");
draw_set_font(font0);

if (debug) {
	var lowestOxy = 100;
	var lowestFood = 100;
	var i;
	for (i = 0; i < instance_number(obj_fish); i += 1) {
		fish = instance_find(obj_fish, i);
		if (fish.oxygen < lowestOxy) {
			lowestOxy = fish.oxygen;	
		}
		if (fish.food < lowestFood) {
			lowestFood = fish.food;
		}
	}

	draw_text(40, 100, "Cleaniness status: " + string(cleaniness));
	draw_text(40, 120, "Lowest Oxygen of a fish: " + string(lowestOxy));
	draw_text(40, 140, "Lowest Food of a fish: " + string(lowestFood));
	draw_text(40, 160, "Status of pump: " + string(obj_oxygenPump.damage) + "% damaged");
}

if (gameOver) {
	draw_set_color(c_black);
	draw_rectangle(100, 100, 980, 201, true);
	draw_rectangle_color(101, 101, 979, 200, c_white, c_white, c_white, c_white, false);
	draw_text(120, 120, "Thanks for playing my LD46 entry!");
	draw_text(120, 140, "All the fishes died!");
	draw_text(120, 160, "You have had a maximum of " + string(max_fishes) + " fish at one point during the game!");
	draw_set_color(c_white);
}