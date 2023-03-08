if place_meeting(x, y - 16, player) or place_meeting(x, y + 16, player) or place_meeting(x - 16, y, player) or place_meeting(x + 16, y, player) {
	stop_mining(directionFromPlayer, 640)
	global.userLevels.mining_xp += 75;
	temp_message(x + 8, y - 8, "+ 75 XP");
	add_coal();
} else {
	ready = true;
	global.Mining = false;
}