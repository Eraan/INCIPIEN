if (async_load[? "size"] > 0) {
	var c_rec_buff = async_load[? "buffer"];
	buffer_seek(c_rec_buff, buffer_seek_start, 0);
	var message_id = buffer_read(c_rec_buff, buffer_string);
	
	response = json_decode(message_id);
	
	if (ds_map_find_value(response, "type") == msgType.GET_NEW_PLAYERS) {
		show_debug_message("< " + message_id);
		var players = ds_map_find_value(response, "players");
		numberOfExistingPlayers = instance_number(oPlayer);
		
		// DEBUG GUI
		numberOfPlayerz = numberOfExistingPlayers;
		// DEBUG GUI
		
		if numberOfExistingPlayers > 0 {
			
			for (var i = 0; i < numberOfExistingPlayers; ++i) {
			    var exPlayer = instance_find(oPlayer, i);
				var numberOfPlayers = ds_list_size(players);
				
				for (var j = 0; j < numberOfPlayers; ++j) {
				    var player = ds_list_find_value(players, j);
					var pn = ds_map_find_value(player, "playernumber");
					
					playerNumber = pn;
					serversPlayerNumber = exPlayer.playerNumber;
					
					if pn == exPlayer.playerNumber {
						ds_list_delete(players, j);
						numberOfPlayers = ds_list_size(players);
					}
				}
			}
		}
		
		var numberOfRemainingPlayers = ds_list_size(players);
		
		// DEBUG GUI
		numberOfPlayerz = numberOfExistingPlayers;
		// DEBUG GUI
		
		for (var i = 0; i < numberOfRemainingPlayers; ++i) {
		    var player = ds_list_find_value(players, i);
			var xx = ds_map_find_value(player, "x");
			var yy = ds_map_find_value(player, "y");
			with instance_create_layer(xx, yy, "Instances", oPlayer) {
				currentPlayer = false;
				playerNumber = ds_map_find_value(player, "playernumber");
			}
		}
		
	}
}