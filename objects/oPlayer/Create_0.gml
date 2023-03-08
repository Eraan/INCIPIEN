inventory = ds_list_create();
currentPlayer = true;
playerNumber = 0;

global.userStats.user_id = id;
global.playerHealth = 2;
global.checkPaused = false;
image_speed = 0;

gridSize = 16;
moveSpeed = 1;
isMoving = false;
moveTimer = 0;
speedX = 0;
speedY = 0;

alarm[0] = 9000; // 5 Mins

enum movementState {
	IDLE,
	UP,
	DOWN,
	LEFT,
	RIGHT,
}

state = movementState.IDLE;

key_up = 0;
key_down = 0;
key_left = 0;
key_right = 0;