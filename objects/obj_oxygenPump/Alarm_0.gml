/// @description damage degradation

damage += 1;
if (cooldown > 0) {
	cooldown -= 1;	
}

// change sprite of pump when damaged
if (damage < 33) {
	sprite_index = spr_oxygenPump;
}
else if (damage >= 33 && damage < 66) {
	sprite_index = spr_oxygenPump1;
}
else if (damage >= 66) {
	sprite_index = spr_oxygenPump2;
}


alarm[0] = room_speed * 1;