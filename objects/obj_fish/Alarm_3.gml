/// @description create babies


// if fish makes babies, get 5 points
// if fish makes bonus baby, get 2 extra points
if (isChild == false && happiness > 60.0) {
	instance_create_layer(irandom(900) + 60, irandom(600) + 100, "Instances", getRandomFish(irandom(2)));
	if (happiness > 80.0) {
		instance_create_layer(irandom(900) + 60, irandom(600) + 100, "Instances", getRandomFish(irandom(2)));	
		mainGameObject.resource += 5;
	}
	
	mainGameObject.resource += 5;
}

alarm[3] = room_speed * 20;