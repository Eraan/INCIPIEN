draw_self();
var scale = 0.5;

if position_meeting(device_mouse_x(0), device_mouse_y(0), id) {
	if egg == "ready" {
		draw_sprite_ext(sEgg, 1, x + 11, y - 3, scale, scale, 0, c_white, 1);
	}
}