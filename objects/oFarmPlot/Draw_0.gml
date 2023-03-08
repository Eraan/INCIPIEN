draw_self();

if place_meeting(id.x, id.y, oPlayer) { //place_meeting(id.x, id.y, oPlayer)
	if image_index == 0 {
		draw_sprite_ext(sHoe, 0, x + 14.5, y - 1, 0.5, 0.5, 0, c_white, 1);
	}
}

if place_meeting(id.x, id.y, oPlayer) { //place_meeting(id.x, id.y, oPlayer)
	if image_index == 1 {
		draw_text_transformed(x + 14.5, y - 2, "x", .25, .25, 0);
	}
}

if place_meeting(id.x, id.y, oPlayer) { //place_meeting(id.x, id.y, oPlayer)
	if image_index == 2 {
		draw_sprite_ext(sChooseSeed, 0, x + 14.5, y - 1, 0.5, 0.5, 0, c_white, 1);
	}
}

if oPlayer.x == x and oPlayer.y == y { //place_meeting(id.x, id.y, oPlayer)
	if image_index == 0 {
		if keyboard_check_pressed(ord("E")) {
			image_index = 2;
			audio_play_sound(tillDirtSound, 10, false);
			global.userLevels.farming_xp += 5;
			temp_message(x + 8, y - 8, "+ 5 XP");
		}
	}
}