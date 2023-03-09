if place_meeting(x, y - 16, player) or place_meeting(x, y + 16, player) or place_meeting(x - 16, y, player) or place_meeting(x + 16, y, player) {
	stop_chopping(directionFromPlayer, 60)
	global.userLevels.forestry_xp += 20;
	temp_message(x + 8, y - 8, "+ 20 XP");
	add_oak_logs();
	//player = noone;
} else {
	ready = true;
	player.amiChopping = false;
	image_index = 0;
	player = noone;
}


/*
if place_meeting(x, y - 16, oPlayer) or place_meeting(x, y + 16, oPlayer) or place_meeting(x - 16, y, oPlayer) or place_meeting(x + 16, y, oPlayer) {
	audio_stop_sound(woodChopSound);
	audio_play_sound(treeFallSound, 10, false, 1, 0.0, 1.25);
	global.Chopping = false;
	ready = false;
	global.userLevels.forestry_xp += 30;
	temp_message(x + 8, y - 8, "+ 40 XP");
	add_pine_logs();
	alarm[1] = 2560;
	
	
	if directionFromPlayer == 90 {
		
		with oPlayer {
			sprite_index = sPlayerUp;
			image_index = 1;
			image_speed = 0;
		}
	}
	
	if directionFromPlayer == 270 {
		
		with oPlayer {
			sprite_index = sPlayerDown;
			image_index = 1;
			image_speed = 0;
		}
	}
	
	if directionFromPlayer == 180 {
		
		with oPlayer {
			sprite_index = sPlayerLeft;
			image_index = 1;
			image_speed = 0;
		}
	}
	
	if directionFromPlayer == 0 {
		
		with oPlayer {
			sprite_index = sPlayerRight;
			image_index = 1;
			image_speed = 0;
		}
	}
	
	
} else {
	ready = true;
	global.Chopping = false;
}