/// @description reset cooldown logic


if (mainGameObject.selectedItemObj == obj_clean && cleaniness_cooldown < 1) {
	mainGameObject.selectedItemObj = undefined;
	cursor_sprite = -1;
	mainGameObject.selectedItemSpr = undefined;
	cleaniness += 25.0;
	if(cleaniness > 100) {
		cleaniness = 100.0;	
	}
	
	cleaniness_cooldown = 20;
}
else if (mainGameObject.selectedItemObj == obj_food && food_cooldown < 1) {
	mainGameObject.selectedItemObj = undefined;
	cursor_sprite = -1;
	mainGameObject.selectedItemSpr = undefined;
	
	var i;
	for (i = 0; i < instance_number(obj_fish); i += 1) {
		fish = instance_find(obj_fish, i);
		fish.food += 15.0;
	}

	food_cooldown = 15;
	
	
	amountOfCrumbs = (max_fishes/2) > 40 ? 40: (max_fishes/2);
	
	for (i = 0; i < amountOfCrumbs; i++) {
		instance_create_layer(irandom(900) + 40, irandom(50) + 100, "Instances", obj_foodCrumbs);	
	}
	
}