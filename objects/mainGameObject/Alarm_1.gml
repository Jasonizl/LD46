/// @description reduce cleaniness and some cooldowns

cleaniness -= 0.1 + (0.02 * (instance_number(obj_fish)/3))

if (cleaniness < 0) {
	cleaniness = 0;	
}

if (cleaniness_cooldown > 0) {
	cleaniness_cooldown -= 1;	
}

if (food_cooldown > 0) {
	food_cooldown -= 1;	
}

alarm[1] = room_speed * 1;