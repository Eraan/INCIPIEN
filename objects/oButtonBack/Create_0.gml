hover = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id)
sprite = sButtonBack;

if hover {
	draw_sprite(sprite, 1, x, y);
} else draw_sprite(sprite, 0, x, y);