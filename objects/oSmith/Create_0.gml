image_speed = 0;

gridSize = 16;
moveSpeed = 0.5;
isMoving = false;
moveTimer = 0;
speedX = 0;
speedY = 0;

setDirection = irandom_range(1, 4);
moveTiming = irandom_range(30, 300);
alarm[0] = moveTiming;

storeFront = false;