image_speed = 0;

gridSize = 16;
moveSpeed = .25;
isMoving = false;
moveTimer = 0;
speedX = 0;
speedY = 0;

chickenDirection = irandom_range(1, 4);
moveTiming = irandom_range(30, 300);
alarm[0] = moveTiming;

egg = "unready";
alarm[1] = MINUTE1;