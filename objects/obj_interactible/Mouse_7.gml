/// @description Insert description here

if (object_get_name(object_index) == "obj_clean" && mainGameObject.cleaniness_cooldown < 1) {
	mainGameObject.selectedItemObj = object_index;
} else if (object_get_name(object_index) == "obj_food" && mainGameObject.food_cooldown < 1) {
	mainGameObject.selectedItemObj = object_index;
} else if (object_get_name(object_index) == "obj_repair" && obj_oxygenPump.cooldown < 1) {
	mainGameObject.selectedItemObj = object_index;
}
