show_debug_message("host button clicked");
data = ds_map_create();

ds_map_add(data, "hostnumber", noone);
ds_map_add(data, "playernumber", noone);

sendMapOverUDP("127.0.0.1", 8081, 100, data, msgType.CREATE_HOST);