if place_meeting(x, y, oPlayer) or place_meeting(x, y, oNPC1) {
	if closed == true {
		image_speed = 0.5;
		closed = false;
	}
}

if closed == false {
	if image_index == 5 {
		image_index = 6;
		image_speed = 0;
		if (alarm[0] < 0) {
			alarm[0] = 60;
		}
	}
	if image_index == 10 {
		image_index = 0;
		image_speed = 0;
		closed =  true;
	}
}