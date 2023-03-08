if image_index == 4 {
	image_speed = 0;
	image_index = 0;
}

if place_meeting(x, y, oPlayer)
{
	if (floor(image_index) == 1) or (floor(image_index) == 2) or (floor(image_index) == 3) { 
		//instance_deactivate_object(id); 
		global.playerHealth -= 1;
	}
}

if global.playerHealth < 1 {
	instance_deactivate_object(oPlayer);
	instance_activate_object(oPlayerStart);
	instance_activate_object(oKey);
	room_goto(room);
	global.pauser = 0;
	room_persistent = false;
}