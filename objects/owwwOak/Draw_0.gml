draw_self();
var chooseTime = irandom_range(90, 640) / global.userLevels.forestry;
draw_text_transformed(x, y, alarm[0], .25, .25, 0);

if ready == true and global.Chopping == false {
	
	if place_meeting(x, y - 16, player) or place_meeting(x, y + 16, player) or place_meeting(x - 16, y, player) or place_meeting(x + 16, y, player) {
		
		if position_meeting(device_mouse_x(0), device_mouse_y(0), id) and mouse_check_button_pressed(mb_left) {
			
			if global.userLevels.forestry >= 1 {
				start_chopping(directionFromPlayer, chooseTime);
			} else {
				temp_message(x + 8, y, "Lvl 1 Forestry Required.");
			}
		}
	}
}
if ready == false {
	image_index = 1;
} else image_index = 0;

/*
if ready == false {
	image_index = 1;
} else image_index = 0;

if ready == true and global.Chopping == false {
	
	if place_meeting(x, y - 16, oPlayer) or place_meeting(x, y + 16, oPlayer) or place_meeting(x - 16, y, oPlayer) or place_meeting(x + 16, y, oPlayer) {
		
		if position_meeting(device_mouse_x(0), device_mouse_y(0), id) && mouse_check_button_pressed(mb_left) {
			if global.userLevels.forestry >= 2 {
				audio_play_sound(woodChopSound, 10, true);
				alarm[0] = chooseTimeToMine;
				global.Chopping = true;
			
				if directionFromPlayer == 90 {
				
					with oPlayer {
						sprite_index = sPlayerUpChop;
						image_speed = 0.75;
					}
				}
			
				if directionFromPlayer == 270 {
				
					with oPlayer {
						sprite_index = sPlayerDownChop;
						image_speed = 0.75;
					}
				}
			
				if directionFromPlayer == 180 {
				
					with oPlayer {
						sprite_index = sPlayerLeftChop;
						image_speed = 0.75;
					}
				}
			
				if directionFromPlayer == 0 {
				
					with oPlayer {
						sprite_index = sPlayerRightChop;
						image_speed = 0.75;
					}
				}
			} else {
				temp_message(x + 8, y - 8, "Lvl 2 Forestry Required.");
			}
		}
	}
}

if ready == false {
	image_index = 1;
} else image_index = 0;