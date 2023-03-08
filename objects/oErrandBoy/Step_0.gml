if direction == 0 {
	sprite_index = sPlayerRight;
	image_speed = 0.5;
}
if direction == 90 {
	sprite_index = sPlayerUp;
	image_speed = 0.5;
}
if direction == 180 {
	sprite_index = sPlayerLeft;
	image_speed = 0.5;
}
if direction == 270 {
	sprite_index = sPlayerDown;
	image_speed = 0.5;
}

lastPointX = path_get_point_x(smithRoutine, 18);
lastPointY = path_get_point_y(smithRoutine, 18);

if x == lastPointX and y == lastPointY {
	sprite_index = sPlayerDownMine;
	image_speed = .75;
		
	if (alarm[0] < 0) {
		alarm[0] = 240;
	}
}