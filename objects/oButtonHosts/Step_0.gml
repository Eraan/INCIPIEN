if (should_i_try_to_join && !did_we_join) {
	should_i_try_to_join = false;
	alarm[0] = room_speed * 2;
	
	data = ds_map_create();
	ds_map_add(data, "hostnumber", local_host_number);
	ds_map_add(data, "playernumber", noone);
	
	sendMapOverUDP("127.0.0.1", 8081, 100, data, msgType.JOIN_HOST);
}