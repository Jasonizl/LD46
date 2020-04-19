/// @description food and oxygen reducer



food -= (0.5 * ((age_multiplifier*1.5) + (instance_number(obj_fish) / 400)));
oxygen -= (0.3 * (obj_oxygenPump.damage / 10));
cleaniness = mainGameObject.cleaniness * (abs((10 - age_multiplifier)/7) + 0.4);

if(cleaniness > 100) {
	cleaniness = 100;
}

if (food > 100) {
	food = 100;
}


alarm[4] = room_speed * 1; // every second needed things get reduced
