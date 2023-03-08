var _scale = 4;
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
var xposition = 8;
var yposition = 8;

if storeFront == true {
	draw_set_alpha(0.5);
	draw_rectangle(0, 0, view_wport[0], view_hport[0], false);
	draw_set_alpha(1);
	
	//REDRAW CHAR
		// Character
		draw_sprite_ext(sPlayerIcon, 0, xposition, yposition, _scale, _scale, 0, c_white, 1);
		draw_set_colour(c_white);
		draw_text_transformed(xposition + 72, yposition - 6, global.userStats.level, 2, 2, 0);
	
		// Coins
		draw_text_transformed(xposition + 30, yposition + 65, global.userStats.coins, 1, 1, 0);
	
		// Health Points
		draw_text_ext(xposition + 168, yposition + 65, global.userStats.hp, 8, 300);
		draw_set_colour(c_black);

	draw_sprite_ext(sGenericUI, 0, view_wport[0] / 2, view_hport[0] / 2, _scale, _scale, 0, c_white, 1);
	xx = view_wport[0] / 2 - 128;
	yy = view_hport[0] / 2 - 128;
	draw_set_color(c_black);
	draw_text(xx - 100, yy + 20, "Smith");
	draw_set_color(c_white);
	
	// Go Back
	var _back = instance_create_layer(8,  view_hport[0] - 72, "GUI", oButtonBack);
	
	if position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), _back) and mouse_check_button_pressed(mb_left) {
		storeFront = false;
		global.state = "GUI";
		instance_deactivate_object(oButtonBack);
	}
	
	// Bronze Bar
	draw_sprite_ext(sBronzeBar, 0, xx + 64, yy + 20, _scale, _scale, 0, c_white, 1);
	
	if point_in_rectangle(mx, my, xx + 64, yy + 20, xx + 128, yy + 84) {
		
		if global.userStats.coins >= 20 {
			draw_sprite_ext(sHoverItemAvailable, 0, xx + 64, yy + 20, _scale, _scale, 0, c_white, 1);
			
			if mouse_check_button(mb_left) {
				storeFront = false;
				global.state = "GUI";
				global.userStats.coins -= 20;
				add_bronze_bar();
				
				instance_deactivate_object(oButtonBack);
			}
		} else draw_sprite_ext(sHoverItemUnavailable, 0, xx + 64, yy + 20, _scale, _scale, 0, c_white, 1);
		
		draw_text(xx - 100, yy + 47, "Bronze Bar");
		draw_sprite_ext(sCoin, 0, xx - 108, yy + 203, _scale, _scale, 0, c_white, 1);
		draw_text(xx - 80, yy + 204, "-20");
	}
	
	// Iron Bar
	draw_sprite_ext(sIronBar, 0, xx + (128 + 12), yy + 20, _scale, _scale, 0, c_white, 1);
	
	if point_in_rectangle(mx, my, xx + (128 + 12), yy + 20, xx + (192 + 12), yy + 84) {
		
		if global.userStats.coins >= 20 {
			draw_sprite_ext(sHoverItemAvailable, 0, xx + (128 + 12), yy + 20, _scale, _scale, 0, c_white, 1);
			
			if mouse_check_button(mb_left) {
				storeFront = false;
				global.state = "GUI";
				global.userStats.coins -= 25;
				add_iron_bar();
				
				instance_deactivate_object(oButtonBack);
			}
		} else draw_sprite_ext(sHoverItemUnavailable, 0, xx + (128 + 12), yy + 20, _scale, _scale, 0, c_white, 1);
		
		draw_text(xx - 100, yy + 47, "Iron Bar");
		draw_sprite_ext(sCoin, 0, xx - 108, yy + 203, _scale, _scale, 0, c_white, 1);
		draw_text(xx - 80, yy + 204, "-25");
	}
	
	// Steel Bar
	draw_sprite_ext(sSteelBar, 0, xx + (192 + (12 * 2)), yy + 20, _scale, _scale, 0, c_white, 1);
	
	if point_in_rectangle(mx, my, xx + (192 + (12 * 2)), yy + 20, xx + (256 + (12 * 2)), yy + 84) {
		
		if global.userStats.coins >= 45 {
			draw_sprite_ext(sHoverItemAvailable, 0, xx + (192 + (12 * 2)), yy + 20, _scale, _scale, 0, c_white, 1);
			
			if mouse_check_button(mb_left) {
				storeFront = false;
				global.state = "GUI";
				global.userStats.coins -= 45;
				add_steel_bar();
				
				instance_deactivate_object(oButtonBack);
			}
		} else draw_sprite_ext(sHoverItemUnavailable, 0, xx + (192 + (12 * 2)), yy + 20, _scale, _scale, 0, c_white, 1);
	
		draw_text(xx - 100, yy + 47, "Steel Bar");
		draw_sprite_ext(sCoin, 0, xx - 108, yy + 203, _scale, _scale, 0, c_white, 1);
		draw_text(xx - 80, yy + 204, "-45");
	}
	
	// Mithril Bar
	draw_sprite_ext(sMithrilBar, 0, xx + (256 + (12 * 3)), yy + 20, _scale, _scale, 0, c_white, 1);
	
	if point_in_rectangle(mx, my, xx + (256 + (12 * 3)), yy + 20, xx + (320 + (12 * 3)), yy + 84) {
		
		if global.userStats.coins >= 135 {
			draw_sprite_ext(sHoverItemAvailable, 0, xx + (256 + (12 * 3)), yy + 20, _scale, _scale, 0, c_white, 1);
			
			if mouse_check_button(mb_left) {
				storeFront = false;
				global.state = "GUI";
				global.userStats.coins -= 135;
				add_mithril_bar();
				
				instance_deactivate_object(oButtonBack);
			}
		} else draw_sprite_ext(sHoverItemUnavailable, 0, xx + (256 + (12 * 3)), yy + 20, _scale, _scale, 0, c_white, 1);
	
		draw_text(xx - 100, yy + 47, "Mithril Bar");
		draw_sprite_ext(sCoin, 0, xx - 108, yy + 203, _scale, _scale, 0, c_white, 1);
		draw_text(xx - 80, yy + 204, "-135");
	}
	
	draw_set_color(c_black);
	
	// ReDraw INVENTORY
	draw_sprite_ext(sInventorySell, 0, view_wport[0] / 2, view_hport[0] - 128, _scale, _scale, 0, c_white, 1);
	
	var _eachItem = variable_struct_names_count(global.Items);
	var _itemNames = variable_struct_get_names(global.Items);
	
	draw_set_color(c_white);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_middle);
	draw_text(view_wport[0] / 2, view_hport[0] - 256, "Left Click: Sell One      Right Click: Sell All");
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_set_color(c_black);

    for (var i = 0; i < _eachItem; i++) {
		gc_collect();
		
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
				var price = value[$ "price"];
		
			    // Draw Items
				var item_x = ((view_wport[0] / 2) - (55 * _scale)) + (i * (64 + 12));
				var item_y = view_hport[0] - (58 * _scale);
				
				
				if i >= 6 && i < 12 {
					var item_x = ((view_wport[0] / 2) - (55 * _scale)) + ((i - 6) * (64 + 12));
					var item_y = view_hport[0] - (39 * _scale);
				}
			
				if i >= 12 && i < 18 {
					var item_x = ((view_wport[0] / 2) - (55 * _scale)) + ((i - 12) * (64 + 12));
					var item_y = view_hport[0] - (20 * _scale);
				}
		
				draw_sprite_ext(sprite, 0, item_x, item_y, _scale, _scale, 0, c_white, 1);
				draw_text(item_x, item_y - 4, amount);
				
				if value[$ "type"] != "Smithing" {
					draw_set_alpha(0.5);
					draw_rectangle(item_x, item_y, item_x + 64, item_y + 64, 0);
					draw_set_alpha(1);
				}
				
				if point_in_rectangle(mx, my, item_x, item_y, item_x + 64, item_y + 64) && value[$ "type"] == "Smithing"  {
					draw_set_color(c_white);
					draw_text(xx - 100, yy + 47, string(name));
					draw_sprite_ext(sCoin, 0, xx - 108, yy + 179, _scale, _scale, 0, c_white, 1);
					draw_text(xx - 80, yy + 180, "+" + string(price));
					draw_sprite_ext(sCoin, 0, xx - 108, yy + 203, _scale, _scale, 0, c_white, 1);
					draw_text(xx - 80, yy + 204, "+" + string((price * amount)));
					draw_sprite_ext(sHoverItemAvailable, 0, item_x, item_y, _scale, _scale, 0, c_white, 1);
					draw_set_color(c_black);
					
					//draw_text(item_x, item_y + 20, "$" + string(price));
					//draw_text(item_x, item_y + 38, "$" + string((price * amount)));
					if mouse_check_button_pressed(mb_left) {
						global.userStats.coins += price;
						value[$ "amount"] -= 1;
						show_debug_message(amount);
					}
					if mouse_check_button_pressed(mb_right) {
						global.userStats.coins += (price * amount);
						value[$ "amount"] -= value[$ "amount"];
						show_debug_message(amount);
					}
				}
			}
		}
	}
}