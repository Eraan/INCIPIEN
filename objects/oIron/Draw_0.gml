draw_self();
var chooseTimeToMine = irandom_range(240, 640) / global.userLevels.mining;

if ready == true and global.Mining == false {
	
	if place_meeting(x, y - 16, player) or place_meeting(x, y + 16, player) or place_meeting(x - 16, y, player) or place_meeting(x + 16, y, player) {
		
		if position_meeting(device_mouse_x(0), device_mouse_y(0), id) and mouse_check_button_pressed(mb_left) {
			
			if global.userLevels.mining >= 6 {
				start_mining(directionFromPlayer, chooseTimeToMine);
			} else {
				temp_message(x + 8, y, "Lvl 6 Mining Required.");
			}
		}
	}
}

if ready == false {
	image_index = 1;
} else image_index = 0;