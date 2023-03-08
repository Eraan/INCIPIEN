draw_self();
if place_meeting(x, y - 16, oPlayer) or place_meeting(x, y + 16, oPlayer) or place_meeting(x - 16, y, oPlayer) or place_meeting(x + 16, y, oPlayer) {
	draw_sprite_ext(sPressF, 0, x + 16, y + 2, 0.5, 0.5, 0, c_white, 1);
}