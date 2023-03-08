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

lastPointX = path_get_point_x(NPC1_home_shop, 5);
lastPointY = path_get_point_y(NPC1_home_shop, 5);

if x == lastPointX and y == lastPointY {
	if buying == true {
		
		sprite_index = sPlayerUp;
		image_index = 1;
		image_speed = 0;
		
		if (alarm[0] < 0) {
			alarm[0] = 60;
		}
	}
}

// Buying Produce
var chooseProd = irandom_range(1, 4);
var chooseQty = irandom_range(0, 3);

if place_meeting(x, y + 16, oStall) or place_meeting(x, y - 16, oStall) or place_meeting(x - 16, y, oStall) or place_meeting(x + 16, y, oStall) {
	if buying == true {
		
		switch (chooseProd) {
			case 1:
				if oStall.carrots >= chooseQty {
					oStall.carrots -= chooseQty;
					global.coins += chooseQty * 0.25;
				}
			break;

			case 2:
				if oStall.snowPeas >= chooseQty {
					oStall.snowPeas -= chooseQty;
					global.coins += chooseQty * .15;
				}
			break;

			case 3:
				if oStall.sweetPotatos >= chooseQty {
					oStall.sweetPotatos -= chooseQty;
					global.coins += chooseQty * 1;
				}
			break;

			case 4:
				if oStall.zucchini >= chooseQty {
					oStall.zucchini -= chooseQty;
					global.coins += chooseQty * .50;
				}
			break;
		}
	}
}