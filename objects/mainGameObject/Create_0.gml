/// @description Insert description here

selectedItemObj = undefined;
selectedItemSpr = undefined;
alarm[0] = room_speed * 5;
alarm[1] = room_speed * 1;
debug = false;

// create fish objects on startup
randomise()
var i;
for (i = 0; i < 2; i+= 1) {
	instance_create_layer(irandom(500) + 60, irandom(500) + 100, "Instances", irandom(1) == 0 ? obj_fish2 : obj_fish1);
}

max_fishes = instance_number(obj_fish);