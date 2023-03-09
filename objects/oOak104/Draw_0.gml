draw_self();
var chooseTime = irandom_range(90, 640) / global.userLevels.forestry;
draw_text_transformed(x + 16, y, player, .25, .25, 0);
draw_text_transformed(x, y, alarm[0], .25, .25, 0);


if (player != -4) && (player.amiChopping == true) && (ready == true) {
	
	if place_meeting(x, y - 16, player) or place_meeting(x, y + 16, player) or place_meeting(x - 16, y, player) or place_meeting(x + 16, y, player) {
		
		if position_meeting(device_mouse_x(0), device_mouse_y(0), id) && mouse_check_button_pressed(mb_left) {
			ready = false;
			
			if global.userLevels.forestry >= 1 {
				start_chopping(directionFromPlayer, chooseTime);
			} else {
				temp_message(x + 8, y, "Lvl 1 Forestry Required.");
			}
		}
	} else {
		player = noone;
	}
}