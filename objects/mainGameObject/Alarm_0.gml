/// @description Insert description here
if (instance_number(obj_fish) > max_fishes) {
	max_fishes = instance_number(obj_fish);
}

current_fishes = instance_number(obj_fish);
alarm[0] = room_speed * 1;