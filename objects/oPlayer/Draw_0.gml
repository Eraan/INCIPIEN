draw_self();

//CHOPPING
if position_meeting(device_mouse_x(0), device_mouse_y(0), oOak104) { // && mouse_check_button_pressed(mb_left)
	if place_meeting(x, y - 16, oOak104) or place_meeting(x, y + 16, oOak104) or place_meeting(x - 16, y, oOak104) or place_meeting(x + 16, y, oOak104) {
		id.amiChopping = true;
	}
}

draw_text_transformed(x + 16, y, id, .25, .25, 0);
draw_text_transformed(x + 16, y + 4, amiChopping, .25, .25, 0);