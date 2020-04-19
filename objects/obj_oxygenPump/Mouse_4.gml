/// @description repair pump functionality

// if pressed with repair item, repairs and sets cooldown
if (mainGameObject.selectedItemObj == obj_repair) {
	mainGameObject.selectedItemObj = undefined;
	cursor_sprite = -1;
	mainGameObject.selectedItemSpr = undefined;
	damage -= 25;
	if(damage < 0) {
		damage = 0;	
	}
	
	cooldown = 30;
}