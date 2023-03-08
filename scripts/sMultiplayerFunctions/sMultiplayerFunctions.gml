function sendMapOverUDP(ip, port, size, map, type) {
	network_connect_raw(global.client, ip, port);
	var player_buffer = buffer_create(size, buffer_wrap, size);
	ds_map_add(map, "type", type);
	var dataJson = json_encode(map);
	show_debug_message("SENDING TO SERVER: " + dataJson);
	ds_map_destroy(map);
	
	buffer_seek(player_buffer, buffer_seek_start, 0);
	buffer_write(player_buffer, buffer_text, dataJson);
	network_send_udp_raw(global.client, ip, port, player_buffer, buffer_tell(player_buffer));
}

function set_player_stat() {
	data = ds_map_create();
	
	ds_map_add(data, "movement", state);
	ds_map_add(data, "x", x);
	ds_map_add(data, "y", y);
	ds_map_add(data, "hostnumber", global.host_number);
	ds_map_add(data, "playernumber", global.player_number);
	
	sendMapOverUDP("127.0.0.1", 8081, 100, data, msgType.SET_PLAYER_STAT);
}

function get_player_stat() {
	data = ds_map_create();
	
	ds_map_add(data, "hostnumber", global.host_number);
	ds_map_add(data, "playernumber", playerNumber);
	ds_map_add(data, "playerstat", noone);
	sendMapOverUDP("127.0.0.1", 8081, 100, data, msgType.GET_PLAYER_STAT);
}