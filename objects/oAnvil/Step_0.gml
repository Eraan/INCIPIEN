if place_meeting(x, y - 16, oPlayer) or place_meeting(x, y + 16, oPlayer) or place_meeting(x - 16, y, oPlayer) or place_meeting(x + 16, y, oPlayer) {
	if keyboard_check_pressed(ord("E")) {
		global.state = "noGUI";
		anvil = true;
	}
}

depth = -y;