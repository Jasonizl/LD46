/// @description Insert description here
speed = (1 + random(2.5));
direction = irandom(360);
alarm[0] = room_speed * 15; // grow older
alarm[1] = room_speed * 120; // die after 2 minutes of being alive
alarm[2] = room_speed * 2 + irandom(3);
alarm[3] = room_speed * 20;
alarm[4] = room_speed * 1; // every second needed things get reduced

if (isChild) {
	image_xscale *= 0.5;	
	image_yscale *= 0.5;
}

if(direction < 90 || direction > 270) {
	image_xscale *= -1;	
}
