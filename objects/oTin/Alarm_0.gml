if place_meeting(x, y - 16, player) or place_meeting(x, y + 16, player) or place_meeting(x - 16, y, player) or place_meeting(x + 16, y, player) {
	stop_mining(directionFromPlayer, 480)
	global.userLevels.mining_xp += 15;
	temp_message(x + 8, y - 8, "+ 15 XP");
	add_tin_ore();
} else {
	ready = true;
	global.Mining = false;
}