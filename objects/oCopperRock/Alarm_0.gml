if place_meeting(x, y - 16, player) or place_meeting(x, y + 16, player) or place_meeting(x - 16, y, player) or place_meeting(x + 16, y, player) {
	stop_mining(directionFromPlayer, 240)
	global.userLevels.mining_xp += 10;
	temp_message(x + 8, y - 8, "+ 10 XP");
	add_copper_ore();
} else {
	ready = true;
	global.Mining = false;
}