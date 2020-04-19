/// @description Initalizing

selectedItemObj = undefined;
selectedItemSpr = undefined;
alarm[0] = room_speed * 1;
alarm[1] = room_speed * 1;
debug = false;
gameOver = false;
muted = false;

// create fish objects on startup
randomise()
var i;
for (i = 0; i < 2; i+= 1) {
	instance_create_layer(irandom(900) + 60, irandom(600) + 100, "Instances", getRandomFish(irandom(2)));
}


max_fishes = instance_number(obj_fish);
current_fishes = instance_number(obj_fish);

audio_play_sound(sound0, 1, true);