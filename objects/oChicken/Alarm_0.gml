chickenDirection = irandom_range(1, 4);
moveTiming = irandom_range(60, 300);
alarm[0] = moveTiming;
var imageSetSpeed = .25;
	
switch (chickenDirection) {
	// UP
	case 1:
		if !place_meeting(x, y - 16, oCollision) {
			direction = 90;
			sprite_index = sChickenUp;
			image_speed = imageSetSpeed;
			isMoving = true;
			moveTimer = gridSize;
			speedX = 0;
			speedY = -moveSpeed;
		}
	break;
	
	// DOWN
	case 2:
		if !place_meeting(x, y + 16, oCollision) {
			direction = 270;
			sprite_index = sChickenDown;
			image_speed = imageSetSpeed;
			isMoving = true;
			moveTimer = gridSize;
			speedX = 0;
			speedY = moveSpeed;
		}
	break;
	
	// LEFT
	case 3:
		if !place_meeting(x - 16, y, oCollision) {
			direction = 180;
			sprite_index = sChickenLeft;
			image_speed = imageSetSpeed;
			isMoving = true;
			moveTimer = gridSize;
			speedX = -moveSpeed;
			speedY = 0;
		}
	break;
	
	// RIGHT
	case 4:
		if !place_meeting(x + 16, y, oCollision) {
			direction = 0;
			sprite_index = sChickenRight;
			image_speed = imageSetSpeed;
			isMoving = true;
			moveTimer = gridSize;
			speedX = moveSpeed;
			speedY = 0;
		}
	break;
}