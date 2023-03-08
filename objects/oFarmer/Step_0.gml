depth = -y;

// MOVE
if (isMoving == true) {
	x += speedX;
	y += speedY;
	
	moveTimer -= moveSpeed;
	if (moveTimer == 0) {
		isMoving = false;
		image_index = 1;
		image_speed = 0;
	}
}

if place_meeting(x, y - 16, oPlayer) or place_meeting(x, y + 16, oPlayer) or place_meeting(x - 16, y, oPlayer) or place_meeting(x + 16, y, oPlayer) {
	if keyboard_check_pressed(ord("F")) {
		global.state = "noGUI";
		storeFront = true;
	}
}
