/// @description Game relevant stuff

if (selectedItemObj != undefined && object_get_sprite(selectedItemObj) != selectedItemSpr) {
	selectedItemSpr = object_get_sprite(selectedItemObj);
	cursor_sprite = object_get_sprite(selectedItemObj);
}

if (resource > 120) {
	resource = 120;	
}

if (instance_number(obj_fish) == 0) {
	gameOver = true;
}