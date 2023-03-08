// Mining
function start_mining(player_direction, chosen_time) {
	audio_play_sound(miningSound, 10, true, 1, 0, 1.5);
	global.Mining = true;
	other.alarm[0] = chosen_time;
	
	if player_direction == 90 {
		with player {
			sprite_index = sPlayerUpMine;
			image_speed = 0.75;
		}
	}
	if player_direction == 270 {
				
		with player {
			sprite_index = sPlayerDownMine;
			image_speed = 0.75;
		}
	}	
	if player_direction == 180 {
				
		with player {
			sprite_index = sPlayerLeftMine;
			image_speed = 0.75;
		}
	}	
	if player_direction == 0 {
				
		with player {
			sprite_index = sPlayerRightMine;
			image_speed = 0.75;
		}
	}
}
	
function stop_mining(player_direction, chosen_time) {
	audio_stop_sound(miningSound);
	audio_play_sound(treeFallSound, 10, false, 1, 0.0, 5);
	global.Mining = false;
	other.ready = false;
	other.alarm[1] = chosen_time
	
	if player_direction == 90 {
		with player {
			sprite_index = sPlayerUp;
			image_index = 1;
			image_speed = 0;
		}
	}
	if player_direction == 270 {
		with player {
			sprite_index = sPlayerDown;
			image_index = 1;
			image_speed = 0;
		}
	}
	if player_direction == 180 {
		with player {
			sprite_index = sPlayerLeft;
			image_index = 1;
			image_speed = 0;
		}
	}
	if player_direction == 0 {
		with player {
			sprite_index = sPlayerRight;
			image_index = 1;
			image_speed = 0;
		}
	}
}

// Forestry
function start_chopping(player_direction, chosen_time) {
	
	audio_play_sound(woodChopSound, 10, true);
	global.Chopping = true;
	other.alarm[0] = chosen_time;
	
	if player_direction == 90 {
		with player {
			sprite_index = sPlayerUpChop;
			image_speed = 0.75;
		}
	}
	if player_direction == 270 {
				
		with player {
			sprite_index = sPlayerDownChop;
			image_speed = 0.75;
		}
	}	
	if player_direction == 180 {
				
		with player {
			sprite_index = sPlayerLeftChop;
			image_speed = 0.75;
		}
	}	
	if player_direction == 0 {
				
		with player {
			sprite_index = sPlayerRightChop;
			image_speed = 0.75;
		}
	}
}
	
function stop_chopping(player_direction, chosen_time) {
	audio_stop_sound(woodChopSound);
	audio_play_sound(treeFallSound, 10, false, 1, 0.0, 1.25);
	global.Chopping = false;
	other.ready = false;
	other.alarm[1] = chosen_time
	
	if player_direction == 90 {
		with player {
			sprite_index = sPlayerUp;
			image_index = 1;
			image_speed = 0;
		}
	}
	if player_direction == 270 {
		with player {
			sprite_index = sPlayerDown;
			image_index = 1;
			image_speed = 0;
		}
	}
	if player_direction == 180 {
		with player {
			sprite_index = sPlayerLeft;
			image_index = 1;
			image_speed = 0;
		}
	}
	if player_direction == 0 {
		with player {
			sprite_index = sPlayerRight;
			image_index = 1;
			image_speed = 0;
		}
	}
}