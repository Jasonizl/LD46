/// @description Insert description here

cleaniness -= (0.03 * instance_number(obj_fish))

if (cleaniness_cooldown > 0) {
	cleaniness_cooldown -= 1;	
}

if (food_cooldown > 0) {
	food_cooldown -= 1;	
}

alarm[1] = room_speed * 1;