depth = -y;

// MOVE
if (isMoving == true) {
	x += speedX;
	y += speedY;
	
	moveTimer -= moveSpeed;
	if (moveTimer == 0) {
		isMoving = false;
		//if direction == 0 {
		//	sprite_index = sPlayerRight;
		//}
		//if direction == 90 {
		//	sprite_index = sPlayerUp;
		//}
		//if direction == 180 {
		//	sprite_index = sPlayerLeft;
		//}
		//if direction == 270 {
		//	sprite_index = sPlayerDown;
		//}
		image_index = 1;
		image_speed = 0;
	}
}