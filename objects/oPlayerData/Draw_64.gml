var _scale = 4;
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
var xposition = 8;
var yposition = 8;

draw_text(view_wport[0] / 2, view_hport[0] - 32, "Host #: " + string(global.host_number));
draw_text(view_wport[0] / 2, view_hport[0] - 50, "Player #: " + string(global.player_number));


if global.state == "GUI" {
	// Inventory
	draw_sprite_ext(sUserInventory, 0, view_wport[0] - 144, view_hport[0] - 72, _scale, _scale, 0, c_white, 1);
	
	if point_in_rectangle(mx, my, view_wport[0] - 144, view_hport[0] - 72, view_wport[0] - (144 - 64), view_hport[0] - (72 - 64)) && mouse_check_button_pressed(mb_left) {
		if inventoryToggled == false {
			inventoryToggled = true;
			show_debug_message("inventory toggled");
		}  else {
			inventoryToggled = false;
			show_debug_message("inventory untoggled");
		}
	}
	
	if inventoryToggled == true {
		draw_sprite_ext(sInventoryBackdrop, 0, 0, view_hport[0] - (96 * _scale), _scale, _scale, 0, c_white, 1);
	
		var _eachItem = variable_struct_names_count(global.Items);
		var _itemNames = variable_struct_get_names(global.Items);

		for (var i = 0; i < _eachItem; i++) {
			var key = _itemNames[i];
			var value = global.Items[$ key];
		
			if variable_struct_exists(global.Items, _itemNames[i]) {
				var key = _itemNames[i];
				var value = global.Items[$ key];
		
				if value[$ "amount"] >= 1 {
					var amount = value[$ "amount"];
					var name = value[$ "name"];
					var sprite = value[$ "sprite"];
					var object = value[$ "object"];
					var type = value[$ "type"];
					if type == "Weapon" {
						var strength = value[$ "strengthReq"];
						var attack = value[$ "attack"];
					}
		
					// Draw Items
					var item_x = xposition + (i * (64 + 12)); // 
					var item_y = view_hport[0] - (94 * _scale);
		
					if i >= 4 && i < 8 {
						item_x = xposition + ((i - 4) * (64 + 12));
						item_y = view_hport[0] - (75 * _scale);
					}
			
					if i >= 8 && i < 12 {
						//item_x = xposition + (i - (4 * 2) * (64 + 12));
						item_x = xposition + ((i - 8) * (64 + 12));
						item_y = view_hport[0] - (56 * _scale);
					}
				
					if i >= 12 && i < 16 {
						//item_x = xposition + (i - (4 * 2) * (64 + 12));
						item_x = xposition + ((i - 12) * (64 + 12));
						item_y = view_hport[0] - (37 * _scale);
					}
		
					draw_sprite_ext(sprite, 0, item_x, item_y, _scale, _scale, 0, c_white, 1);
					draw_text(item_x, item_y - 4, amount);
					
					if point_in_rectangle(mx, my, item_x, item_y, item_x + 64, item_y + 64) {
						
						if type == "Forestry" && mouse_check_button_pressed(mb_left) {
							instance_create_layer(oPlayer.x, oPlayer.y, "Instances", oCampfire);
						}
						
						if type == "Weapon" && mouse_check_button_pressed(mb_left) {
							
							if global.userLevels.strength >= strength {
								if variable_struct_exists(global.weapon, "weaponName") {
									
									
									if global.weapon[$ "weaponName"] == "Bronze Sword" {
										global.weapon = -1;
										add_bronze_sword();
										
									}
									if global.weapon[$ "weaponName"] == "Iron Sword" {
										global.weapon = -1;
										add_iron_sword();
									}
									if global.weapon[$ "weaponName"] == "Steel Sword" {
										global.weapon = -1;
										add_steel_sword();
									}
									if global.weapon[$ "weaponName"] == "Mithril Sword" {
										global.weapon = -1;
										add_mithril_sword();
									}
								}
								
								global.weapon = {
									weaponName : name,
									weaponObject : object,
									weaponSprite : sprite,
									weaponStengthReq : strength,
									weaponAttack : attack
								}
							
								value[$ "amount"] -= 1;
							} else {
								temp_message(global.userStats.user_id.x, global.userStats.user_id.y, "Strength " + string(strength) + " required.");	
							}
						}
					}
				}
			}
		}
	}
	//draw_text_transformed(xposition + 72, yposition - 6, global.ItemTesting, 2, 2, 0);
	
	
	// Character
	draw_sprite_ext(sPlayerIcon, 0, xposition, yposition, _scale, _scale, 0, c_white, 1);
	draw_set_colour(c_white);
	draw_text_transformed(xposition + 72, yposition, global.userStats.username, 1, 1, 0);
	draw_text_transformed(xposition + 72, yposition + 18, "Lvl. " + string(global.userStats.level), 1, 1, 0);
	
	if variable_struct_exists(global.weapon, "weaponName") {
		draw_sprite_ext(global.weapon[$ "weaponSprite"], 0, xposition + 120, yposition, _scale, _scale, 0, c_white, 1);
		
		if point_in_rectangle(mx, my, xposition + 120, yposition, xposition + 184, yposition + 64) && mouse_check_button_pressed(mb_right) {
			
			if global.weapon[$ "weaponName"] == "Bronze Sword" {
				show_debug_message(global.weapon[$ "weaponName"]);
				add_bronze_sword();
				
			}
			if global.weapon[$ "weaponName"] == "Iron Sword" {
				show_debug_message(global.weapon[$ "weaponName"]);
				add_iron_sword();
				
			}
			if global.weapon[$ "weaponName"] == "Steel Sword" {
				show_debug_message(global.weapon[$ "weaponName"]);
				add_steel_sword();
				
			}
			if global.weapon[$ "weaponName"] == "Mithril Sword" {
				show_debug_message(global.weapon[$ "weaponName"]);
				add_mithril_sword();
				
			}
			global.weapon = -1;
		}
	}
	
	
	// Coins
	draw_text_transformed(xposition + 30, yposition + 65, global.userStats.coins, 1, 1, 0);
	
	// Health Points
	draw_text_ext(xposition + 168, yposition + 65, global.userStats.hp, 8, 300);
	draw_set_colour(c_black);

	// Levels
	draw_sprite_ext(sUserLevels, 0, view_wport[0] - 72, view_hport[0] - 72, _scale, _scale, 0, c_white, 1);
	
		if point_in_rectangle(mx, my, view_wport[0] - 72, view_hport[0] - 72, view_wport[0] - (72 - 64), view_hport[0] - (72 - 64)) && mouse_check_button_pressed(mb_left) {
		if levelsToggled == false {
			levelsToggled = true;
			show_debug_message("inventory toggled");
		}  else {
			levelsToggled = false;
			show_debug_message("inventory untoggled");
		}
	}
	
	if levelsToggled == true {
	
	//if point_in_rectangle(mx, my, view_wport[0] - 72, view_hport[0] - 72, view_wport[0] - 8, view_hport[0] - 8) && mouse_check_button(mb_left) {
		draw_set_colour(#363636);
		
		var xx = view_wport[0] - 72;
		var yy = yposition;
		var _scale = 2;

		// Strength
		draw_sprite_ext(sStrength, 0, xx, yy, 4, 4, 0, c_white, 1);
		draw_text_transformed(xx + 8, yy, global.userLevels.strength, 1, 1, 0);
		draw_set_colour(c_white);
		draw_text_transformed(xx + 8, yy + 40, string(strengthXpGoal - global.userLevels.strength_xp), 0.75, 0.75, 0);
		draw_set_colour(#363636);
		
		// Defense
		draw_sprite_ext(sDefense, 0, xx, yy + 72, 4, 4, 0, c_white, 1);
		draw_text_transformed(xx + 8, yy + 72, global.userLevels.defense, 1, 1, 0);
		draw_set_colour(c_white);
		draw_text_transformed(xx + 8, yy + (40 + 72), string(defenseXpGoal - global.userLevels.defense_xp), 0.75, 0.75, 0);
		draw_set_colour(#363636);
		
		// Range
		draw_sprite_ext(sRange, 0, xx, yy + (72 * 2), 4, 4, 0, c_white, 1);
		draw_text_transformed(xx + 8, yy + (72 * 2), global.userLevels.range, 1, 1, 0);
		draw_set_colour(c_white);
		draw_text_transformed(xx + 8, yy + (40 + (72 * 2)), string(rangeXpGoal - global.userLevels.range_xp), 0.75, 0.75, 0);
		draw_set_colour(#363636);
		
		// Magic 
		draw_sprite_ext(sMagic, 0, xx, yy + (72 * 3), 4, 4, 0, c_white, 1);
		draw_text_transformed(xx + 8, yy + (72 * 3), global.userLevels.magic, 1, 1, 0);
		draw_set_colour(c_white);
		draw_text_transformed(xx + 8, yy + (40 + (72 * 3)), string(magicXpGoal - global.userLevels.magic_xp), 0.75, 0.75, 0);
		draw_set_colour(#363636);
		
		// Farming
		draw_sprite_ext(sFarming, 0, xx, yy + (72 * 4), 4, 4, 0, c_white, 1);
		draw_text_transformed(xx + 8, yy + (72 * 4), global.userLevels.farming, 1, 1, 0);
		draw_set_colour(c_white);
		draw_text_transformed(xx + 8, yy + (40 + (72 * 4)), string(farmingXpGoal - global.userLevels.farming_xp), 0.75, 0.75, 0);
		draw_set_colour(#363636);
		
		// Mining
		draw_sprite_ext(sMining, 0, xx, yy + (72 * 5), 4, 4, 0, c_white, 1);
		draw_text_transformed(xx + 8, yy + (72 * 5), global.userLevels.mining, 1, 1, 0);
		draw_set_colour(c_white);
		draw_text_transformed(xx + 8, yy + (40 + (72 * 5)), string(miningXpGoal - global.userLevels.mining_xp), 0.75, 0.75, 0);
		draw_set_colour(#363636);
		
		// Smithing
		draw_sprite_ext(sSmithing, 0, xx, yy + (72 * 6), 4, 4, 0, c_white, 1);
		draw_text_transformed(xx + 8, yy + (72 * 6), global.userLevels.smithing, 1, 1, 0);
		draw_set_colour(c_white);
		draw_text_transformed(xx + 8, yy + (40 + (72 * 6)), string(smithingXpGoal - global.userLevels.smithing_xp), 0.75, 0.75, 0);
		draw_set_colour(#363636);
		
		// Forestry
		draw_sprite_ext(sForestry, 0, xx, yy + (72 * 7), 4, 4, 0, c_white, 1);
		draw_text_transformed(xx + 8, yy + (72 * 7), global.userLevels.forestry, 1, 1, 0);
		draw_set_colour(c_white);
		draw_text_transformed(xx + 8, yy + (40 + (72 * 7)), string(forestryXpGoal - global.userLevels.forestry_xp), 0.75, 0.75, 0);
		draw_set_colour(c_black);
	}
}
