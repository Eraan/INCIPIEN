depth = -y;
	
if (currentPlayer) {
	show_debug_message("I AM THE CURRENT PLAYER!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
	input_movement()
	playerNumber = global.player_number;
	set_player_stat();
} else get_player_stat();


// Movement
//if amiChopping == false {
	if (key_up) {
		state = movementState.UP;
		amiChopping = false;
	}
	if (key_down) {
		state = movementState.DOWN;
		amiChopping = false;
	}
	if (key_left) {
		state = movementState.LEFT;
		amiChopping = false;
	}
	if (key_right) {
		state = movementState.RIGHT;
		amiChopping = false;
	}

	if keyboard_check_released(ord("W"))
	or keyboard_check_released(ord("S"))
	or keyboard_check_released(ord("A"))
	or keyboard_check_released(ord("D")) {
		state = movementState.IDLE;	
	}

	if global.state != "noGUI" && global.Mining != true && global.Chopping != true {
		switch(state) {
			case movementState.IDLE:
				//set_player_stat()
			break;
			case movementState.UP:
				

				if (isMoving == false) {
				
					if !place_meeting(x, y - gridSize, oCollision) {
						direction = 90;
						sprite_index = sPlayerUp;
						image_speed = 1;
						isMoving = true;
						moveTimer = gridSize;
						speedX = 0;
						speedY = -moveSpeed;
						//set_player_stat()
					}
				}
				
			break;
			case movementState.DOWN:
				
				if (isMoving == false) {
		
					if !place_meeting(x, y + gridSize, oCollision) {
						direction = 270;
						sprite_index = sPlayerDown;
						image_speed = 1;
						isMoving = true;
						moveTimer = gridSize;
						speedX = 0;
						speedY = moveSpeed;
						//set_player_stat()
					}
				}
			break;
			case movementState.LEFT:
				
				if (isMoving == false) {
					
					if !place_meeting(x - gridSize, y, oCollision) {
						direction = 180;
						sprite_index = sPlayerLeft;
						image_speed = 1;
						isMoving = true;
						moveTimer = gridSize;
						speedX = -moveSpeed;
						speedY = 0;
						//set_player_stat()
					}
				}
			break;
			case movementState.RIGHT:
				
				if (isMoving == false) {
					
					if !place_meeting(x + gridSize, y, oCollision) {
						direction = 0;
						sprite_index = sPlayerRight;
						image_speed = 1;
						isMoving = true;
						moveTimer = gridSize;
						speedX = moveSpeed;
						speedY = 0;
						//set_player_stat()
					}
				}
			break;
		}
	}

	
	// STOP MOVEMENT
	if (isMoving == true) {
		x += speedX;
		y += speedY;
	
		moveTimer -= moveSpeed;
		if (moveTimer == 0) {
			isMoving = false;
			if direction == 0 {
				sprite_index = sPlayerRight;
			}
			if direction == 90 {
				sprite_index = sPlayerUp;
			}
			if direction == 180 {
				sprite_index = sPlayerLeft;
			}
			if direction == 270 {
				sprite_index = sPlayerDown;
			}
			image_index = 1;
			image_speed = 0;
		}
	}
//}