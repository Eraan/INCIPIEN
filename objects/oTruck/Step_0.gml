depth = -y;

if produce.carrots > 0 or produce.snowPeas > 0 or produce.sweetPotatos > 0 or produce.zucchini > 0 {
	truckFull = true;
}

if direction == 0 {
	sprite_index = sTruckRight;
	image_speed = 0.5;
	if truckFull == true {
		sprite_index = sTruckRightFull;
	}
}
if direction == 90 {
	sprite_index = sTruckUp;
	image_speed = 0.5;
	if truckFull == true {
		sprite_index = sTruckUpFull;
	}
}
if direction == 180 {
	sprite_index = sTruckLeft;
	image_speed = 0.5;
	if truckFull == true {
		sprite_index = sTruckLeftFull;
	}
}
if direction == 270 {
	sprite_index = sTruckDown;
	image_speed = 0.5;
	if truckFull == true {
		sprite_index = sTruckDownFull;
	}
}

if stopped == true {
	path_speed = 0;
	image_index = 0;
	image_speed = 0;
	sprite_index = sTruckRightStopped;
	if truckFull == true {
		sprite_index = sTruckRightStoppedFull;
	}
}
if stopped == false {
	path_speed = 0.5;
}

if path_position == .25 {

	stopped = true;
		
	if (alarm[0] < 0) {
		alarm[0] = 120;
	}
}

if x == shopStopX and y == shopStopY { //position_meeting(shopStopX, shopStopY, id)
	stopped = true;
	
	if truckFull == true {
		oStall.carrots += produce.carrots;
		oStall.snowPeas += produce.snowPeas;
		oStall.sweetPotatos += produce.sweetPotatos;
		oStall.zucchini += produce.zucchini;
	
		produce.carrots -= produce.carrots;
		produce.snowPeas -= produce.snowPeas;
		produce.sweetPotatos -= produce.sweetPotatos;
		produce.zucchini -= produce.zucchini;
		
		truckFull = false;
	}
		
	if (alarm[1] < 0) {
		alarm[1] = 300;
	}
}