function save_game() {
	instDetails = {
		instID : 0,
		instName : 0,
		instX : 0,
		instY : 0,
		spriteIndex : 0,
		instImage : 0,
	}
	
	// Retrieve and Push Item Details
	var _allItems = array_create(0);
	
	for (var i = 0; i < instance_number(all); ++i;) {
		object = instance_find(all, i);
			
		with object {
			var _id = id;
			var _name = object_get_name(object_index);
			var _x = x;
			var _y = y;
			var _sprite = sprite_index;
			var _image = image_index;
		}
		
		instDetails = {
			instID : _id,
			instName : _name,
			instX : _x,
			instY : _y,
			spriteIndex : _sprite,
			instImage : _image
		}
		
		array_push(_allItems, instDetails);
		
	}
	
	// Item Details
		var _filename1 = "itemdata.json";
		var _json1 = json_stringify(_allItems);
		var _buffer1 = buffer_create( string_byte_length(_json1) + 1, buffer_fixed, 1 );
		buffer_write( _buffer1, buffer_string, _json1);
		buffer_save( _buffer1, _filename1);
		buffer_delete(_buffer1);
		
	// Retrieve and Push User Details
		var _saveArray = array_create(0);
		var _player = global.userStats.user_id;
	
		global.userStats.position_x = _player.x;
		global.userStats.position_y = _player.y;
		//global.userStats.user_id = instance_find(_player, 0);
	
	
		//array_push(_saveArray, global.settings);
		array_push(_saveArray, global.userStats);
		array_push(_saveArray, global.userLevels);
		array_push(_saveArray, global.Items);
		array_push(_saveArray, global.weapon);
	
	// User Details
		var _filename = "savedata.json";
		var _json = json_stringify(_saveArray);
		var _buffer = buffer_create( string_byte_length(_json) + 1, buffer_fixed, 1 );
		buffer_write( _buffer, buffer_string, _json);
		buffer_save( _buffer, _filename );
		buffer_delete(_buffer);

}

function load_game() {
	
	
	instDetails = {
		instID : 0,
		instName : 0,
		instX : 0,
		instY : 0,
		spriteIndex : 0,
		instImage : 0,
	}
	
	// loading our saved data
		var _filename1 = "itemdata.json"
		if !file_exists(_filename1) {
			exit;
		}
			
		instance_destroy(oSmith);
		instance_destroy(oFarmer);

	// load buffer, get json
		var _buffer1 = buffer_load(_filename1);
		var _json1 = buffer_read(_buffer1, buffer_string);
		buffer_delete(_buffer1);
		
		var _loadArray1 = json_parse(_json1);
		
		for (var i = 0; i < array_length(_loadArray1); ++i;) {
			instDetails = array_get(_loadArray1, i);

			//var _newId = instDetails[$ "instID"];
			var _newName = instDetails[$ "instName"];
			var _newX = instDetails[$ "instX"];
			var _newY = instDetails[$ "instY"];
			var _newSprite = instDetails[$ "spriteIndex"];
			var _newImage = instDetails[$ "instImage"];
			
			if _newName == "oSmith" 
			or _newName == "oFarmer" {
				with instance_create_layer(_newX, _newY, "Instances", asset_get_index(_newName)) { //
					sprite_index = _newSprite;
					image_index = _newImage;
				}
			}
		}

	
	// loading our saved data
		var _filename = "savedata.json"
		if !file_exists(_filename) {
			exit;
		}
		
	// load buffer, get json
		var _buffer = buffer_load(_filename);
		var _json = buffer_read(_buffer, buffer_string);
		buffer_delete(_buffer);
		
		var _loadArray = json_parse(_json);
		
	// Set Player Details
		//global.settings = array_get(_loadArray, 0);
		global.userStats = array_get(_loadArray, 0);
		global.userLevels = array_get(_loadArray, 1);
		global.Items = array_get(_loadArray, 2);
		global.weapon = array_get(_loadArray, 3);
		
	// Reposition Player
		instance_destroy(oPlayer);
		instance_create_layer(global.userStats.position_x, global.userStats.position_y, "Instances", oPlayer);
		//oPlayer.x = global.settings.position_x;
		//oPlayer.y = global.settings.position_y;
		
	// New User
		global.userStats.new_user = false;
	
}