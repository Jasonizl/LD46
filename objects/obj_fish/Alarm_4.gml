/// @description food and oxygen reducer



food -= (0.75 * age_multiplifier);
oxygen -= (0.25 * (obj_oxygenPump.damage / 10));

alarm[4] = room_speed * 1; // every second needed things get reduced
