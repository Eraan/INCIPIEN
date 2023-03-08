if (checkForNewPlayer) {
	checkForNewPlayer = false;
	alarm[0] = room_speed * 3;
	
	data = ds_map_create();
	ds_map_add(data, "hostnumber", global.host_number);
	ds_map_add(data, "players", noone);
	sendMapOverUDP("127.0.0.1", 8081, 100, data, msgType.GET_NEW_PLAYERS);
}