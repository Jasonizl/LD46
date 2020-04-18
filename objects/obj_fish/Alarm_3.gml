/// @description create babies


// if fish makes babies, get 10 points
// if fish makes bonus baby, get 5 extra points
if (isChild == false && happiness > 60.0) {
	instance_create_layer(irandom(500) + 60, irandom(500) + 100, "Instances", irandom(1) == 0 ? obj_fish2 : obj_fish1);
	if (happiness > 80.0) {
		instance_create_layer(irandom(500) + 60, irandom(500) + 100, "Instances", irandom(1) == 0 ? obj_fish2 : obj_fish1);	
		mainGameObject.resource += 5;
	}
	
	mainGameObject.resource += 10;
}

alarm[3] = room_speed * 20;