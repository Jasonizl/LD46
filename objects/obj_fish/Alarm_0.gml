/// @description age manipulator


if (isChild) {
	if (image_xscale) < 0 {
		image_xscale -= 0.25;
	}
	else {
		image_xscale += 0.25;
	}
	image_yscale += 0.25;
		
	if (image_yscale >= 1.0) {
		isChild = false;	
	}
		
}

age_multiplifier += 1;

alarm[0] = room_speed * 15; // grow older
