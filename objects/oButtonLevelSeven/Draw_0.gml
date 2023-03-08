hover = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id)
sprite = sButtonLevelSeven;

if global.levelCompletion.levelSeven == 1 {
	if hover {
		draw_sprite(sprite, 1, x, y);
	} else draw_sprite(sprite, 0, x, y);
	if hover && mouse_check_button_released(mb_left) {
		global.pauser = 0;
		room_goto(rLevelSeven);
	}
} else draw_sprite(sButtonLevelLocked, 0, x, y);