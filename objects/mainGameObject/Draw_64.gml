/// @description Insert description here

draw_set_font(font0);
draw_text(700, 20, "You have had " + string(max_fishes) + " fishes");
draw_text(700, 60, "You have " + string(resource) + " points");

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