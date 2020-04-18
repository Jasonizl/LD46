/// @description Insert description here

if (mainGameObject.resource < 10) {
	return;
}

// reset cooldown of 
if (mainGameObject.food_cooldown != 0) {
	mainGameObject.food_cooldown = 0;
	mainGameObject.resource -= 10;
} else if (mainGameObject.cleaniness_cooldown != 0) {
	mainGameObject.cleaniness_cooldown = 0;
	mainGameObject.resource -= 10;
} else if (obj_oxygenPump.cooldown != 0) {
	obj_oxygenPump.cooldown = 0;
	mainGameObject.resource -= 10;
}
