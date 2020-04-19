/// @description main logic of fishes


// movement logic against walls
if (x < 40) {
	x = xprevious + 49;
	image_xscale *= -1;	
	if (direction > 180) {
		direction = (360 - (abs(180 - direction))) + irandom(5);
	} else {
		direction = (360 + (abs(180 - direction))) + irandom(5);
	}
} else if (x > 990) {
	x = xprevious - 49;
	image_xscale *= -1;	
	if (direction > 180) {
		direction = (360 - (abs(180 - direction))) + irandom(5);
	} else {
		direction = (360 + (abs(180 - direction))) + irandom(5);
	}
} else if (y < 100) {
	y = yprevious + 4;
	direction = (360 - (abs(direction))) + irandom(5);
} else if (y > 690) {
	y = yprevious - 4;
	direction = (360 - (abs(direction))) + irandom(5);
}

happiness = (food + oxygen + cleaniness) / 3;

if (happiness < 0.25) {
	instance_destroy();
}