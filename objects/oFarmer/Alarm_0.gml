setDirection = irandom_range(1, 4);
moveTiming = irandom_range(60, 300);
alarm[0] = moveTiming;
var imageSetSpeed = 0.5;
	
switch (setDirection) {
	// UP
	case 1:
		if !place_meeting(x, y - 16, oCollision) or place_meeting(x, y - 16, oGate) {
			direction = 90;
			sprite_index = sFarmerUp;
			image_speed = imageSetSpeed;
			isMoving = true;
			moveTimer = gridSize;
			speedX = 0;
			speedY = -moveSpeed;
		}
	break;
	
	// DOWN
	case 2:
		if !place_meeting(x, y + 16, oCollision) or place_meeting(x, y + 16, oGate) {
			direction = 270;
			sprite_index = sFarmerDown;
			image_speed = imageSetSpeed;
			isMoving = true;
			moveTimer = gridSize;
			speedX = 0;
			speedY = moveSpeed;
		}
	break;
	
	// LEFT
	case 3:
		if !place_meeting(x - 16, y, oCollision) or place_meeting(x - 16, y, oGate) {
			direction = 180;
			sprite_index = sFarmerLeft;
			image_speed = imageSetSpeed;
			isMoving = true;
			moveTimer = gridSize;
			speedX = -moveSpeed;
			speedY = 0;
		}
	break;
	
	// RIGHT
	case 4:
		if !place_meeting(x + 16, y, oCollision) or place_meeting(x + 16, y, oGate) {
			direction = 0;
			sprite_index = sFarmerRight;
			image_speed = imageSetSpeed;
			isMoving = true;
			moveTimer = gridSize;
			speedX = moveSpeed;
			speedY = 0;
		}
	break;
}