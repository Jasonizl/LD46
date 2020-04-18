/// @description Insert description here

if (selectedItemObj != undefined && object_get_sprite(selectedItemObj) != selectedItemSpr) {
	selectedItemSpr = object_get_sprite(selectedItemObj);
	cursor_sprite = object_get_sprite(selectedItemObj);
}


if (instance_number(obj_fish) > max_fishes) {
	max_fishes = instance_number(obj_fish);
}