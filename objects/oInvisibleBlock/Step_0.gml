if falling == true {
	image_index = 0;
	image_speed = 0.2;
}


if place_meeting(x, y, oPlayer) or place_meeting(x, y, oEnemySlime)
{	
	falling = true;
	
} else { 
	falling = false;
}

if image_index = 8 {
	image_index = 9;
	image_speed = 0;
}