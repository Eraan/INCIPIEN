var _scale = 4;
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
var xposition = 8;
var yposition = 8;

if furnace == true {
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
	draw_text(xx - 100, yy + 20, "Furnace");
	draw_set_color(c_white);
	
	// Go Back
	var _back = instance_create_layer(8,  view_hport[0] - 72, "GUI", oButtonBack);
	
	if position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), _back) and mouse_check_button_pressed(mb_left) {
		furnace = false;
		global.state = "GUI";
		instance_deactivate_object(oButtonBack);
	}
	
	// Bronze Bar
	draw_sprite_ext(sBronzeBar, 0, xx + 64, yy + 20, _scale, _scale, 0, c_white, 1);
	
	if point_in_rectangle(mx, my, xx + 64, yy + 20, xx + 128, yy + 84) {
		
		if variable_struct_exists(global.Items, "copperOre") && global.Items.copperOre[$ "amount"] >= 1 && variable_struct_exists(global.Items, "tinOre") && global.Items.tinOre[$ "amount"] >= 1 {
			draw_sprite_ext(sHoverItemAvailable, 0, xx + 64, yy + 20, _scale, _scale, 0, c_white, 1);
			
			if mouse_check_button(mb_left) {
				furnace = false;
				global.state = "GUI";
				global.Items.copperOre[$ "amount"] -= 1
				global.Items.tinOre[$ "amount"] -= 1
				add_bronze_bar();
				
				global.userLevels.smithing_xp += 35;
				temp_message(x + 8, y - 8, "+ 35 XP");
				instance_deactivate_object(oButtonBack);
			}
		} else draw_sprite_ext(sHoverItemUnavailable, 0, xx + 64, yy + 20, _scale, _scale, 0, c_white, 1);
	
		draw_text_ext(xx - 100, yy + 168, "Bronze Bar: 1 Tin Ore & 1 Copper Ore", 18, 140);
	}
	
	// Iron Bar
	draw_sprite_ext(sIronBar, 0, xx + (128 + 12), yy + 20, _scale, _scale, 0, c_white, 1);
	
	if point_in_rectangle(mx, my, xx + (128 + 12), yy + 20, xx + (192 + 12), yy + 84) {
		
		if variable_struct_exists(global.Items, "ironOre") && global.Items.ironOre[$ "amount"] >= 1 {
			draw_sprite_ext(sHoverItemAvailable, 0, xx + (128 + 12), yy + 20, _scale, _scale, 0, c_white, 1);
			
			if mouse_check_button(mb_left) {
				furnace = false;
				global.state = "GUI";
				global.Items.ironOre[$ "amount"] -= 1
				add_iron_bar();
				
				global.userLevels.smithing_xp += 45;
				temp_message(x + 8, y - 8, "+ 45 XP");
				instance_deactivate_object(oButtonBack);
			}
		} else draw_sprite_ext(sHoverItemUnavailable, 0, xx + (128 + 12), yy + 20, _scale, _scale, 0, c_white, 1);
	
		draw_text_ext(xx - 100, yy + 168, "Iron Bar: 1 Iron Ore", 18, 140);
	}
	
	// Steel Bar
	draw_sprite_ext(sSteelBar, 0, xx + (192 + 24), yy + 20, _scale, _scale, 0, c_white, 1);
	
	if point_in_rectangle(mx, my, xx + (192 + 24), yy + 20, xx + (256 + 24), yy + 84) {
		
		if variable_struct_exists(global.Items, "ironOre") && global.Items.ironOre[$ "amount"] >= 1 && variable_struct_exists(global.Items, "coal") && global.Items.coal[$ "amount"] >= 1 {
			draw_sprite_ext(sHoverItemAvailable, 0, xx + (192 + 24), yy + 20, _scale, _scale, 0, c_white, 1);
			
			if mouse_check_button(mb_left) {
				furnace = false;
				global.state = "GUI";
				global.Items.ironOre[$ "amount"] -= 1;
				global.Items.coal[$ "amount"] -= 1;
				add_steel_bar();
				
				global.userLevels.smithing_xp += 65;
				temp_message(x + 8, y - 8, "+ 65 XP");
				instance_deactivate_object(oButtonBack);
			}
		} else draw_sprite_ext(sHoverItemUnavailable, 0, xx + (192 + 24), yy + 20, _scale, _scale, 0, c_white, 1);

		draw_text_ext(xx - 100, yy + 168, "Steel Bar: 1 Iron Ore & 1 Steel Ore", 18, 140);
	}
	
	draw_set_color(c_black);
}