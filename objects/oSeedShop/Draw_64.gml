var _scale = 4;
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

if seedShop == true {
	draw_set_alpha(0.5);
	draw_rectangle(0, 0, view_wport[0], view_hport[0], false);
	draw_set_alpha(1);
	
	backDrop = instance_create_layer(view_wport[0] / 2,  view_hport[0] / 2, "GUI", oSeedShopUI);
	xx = backDrop.x - 128;
	yy = backDrop.y - 128;
	
	// Coins
	draw_sprite_ext(sCoin, 0, xx, yy + 224, _scale, _scale, 0, c_white, 1);
	draw_set_colour(c_white);
	draw_text_ext(xx + 32, yy + 224, global.userStats.coins, 8, 300);
	draw_set_colour(c_black);
	
	// Go Back
	var _back = instance_create_layer(8,  view_hport[0] - 72, "GUI", oButtonBack);
	
	if position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), _back) and mouse_check_button_pressed(mb_left) {
		seedShop = false;
		global.state = "GUI";
		instance_deactivate_object(oButtonBack);
	}
	
	// Carrots
	draw_sprite_ext(sButtonCarrot, 2, xx + 8, yy + 36, _scale, _scale, 0, c_white, 1);
	
	if point_in_rectangle(mx, my, xx + 8, yy + 36, xx + 72, yy + 100) {
		
		if global.userStats.coins >= 1 {
			draw_sprite_ext(sButtonCarrot, 1, xx + 8, yy + 36, _scale, _scale, 0, c_white, 1);
			
			if mouse_check_button(mb_left) {
				seedShop = false;
				global.state = "GUI";
				global.FarmingItems.carrotSeeds[$ "amount"] += 3;
				global.userStats.coins -= 1;
				instance_deactivate_object(oButtonBack);
			}
		} else draw_sprite_ext(sButtonCarrot, 3, xx + 8, yy + 36, _scale, _scale, 0, c_white, 1);
	
		draw_text(xx + 8, yy + 206, "Carrot Seeds: $1");
	}
	
	// Snow Peas
	draw_sprite_ext(sButtonSnowPea, 2, xx + (72 + _scale), yy + 36, _scale, _scale, 0, c_white, 1);
	
	if point_in_rectangle(mx, my, xx + (72 + _scale), yy + 36, xx + (136 + _scale), yy + 100) {
		
		if global.userStats.coins >= 1 {
			draw_sprite_ext(sButtonSnowPea, 1, xx + (72 + _scale), yy + 36, _scale, _scale, 0, c_white, 1);
			
			if mouse_check_button(mb_left) {
				seedShop = false;
				global.state = "GUI";
				global.FarmingItems.snowPeaSeeds[$ "amount"] += 3;
				global.userStats.coins -= 1;
				instance_deactivate_object(oButtonBack);
			}
		} else draw_sprite_ext(sButtonSnowPea, 3, xx + (72 + _scale), yy + 36, _scale, _scale, 0, c_white, 1);
	
		draw_text(xx + 8, yy + 206, "Snow Pea Seeds: $1");
	}
	
	// Sweet Potatos
	draw_sprite_ext(sButtonSweetPotato, 2, xx + (136 + (_scale * 2)), yy + 36, _scale, _scale, 0, c_white, 1);
	
	if point_in_rectangle(mx, my, xx + (136 + (_scale * 2)), yy + 36, xx + (200 + (_scale * 2)), yy + 100) {
		
		if global.userStats.coins >= 2 {
			draw_sprite_ext(sButtonSweetPotato, 1, xx + (136 + (_scale * 2)), yy + 36, _scale, _scale, 0, c_white, 1);
			
			if mouse_check_button(mb_left) {
				seedShop = false;
				global.state = "GUI";
				global.FarmingItems.sweetPotatoSeeds[$ "amount"] += 2;
				global.userStats.coins -= 2;
				instance_deactivate_object(oButtonBack);
			}
		} else draw_sprite_ext(sButtonSweetPotato, 3, xx + (136 + (_scale * 2)), yy + 36, _scale, _scale, 0, c_white, 1);
		
		draw_text(xx + 8, yy + 206, "Sweet Potato Seeds: $2");
	}
	
	// Zucchini
	draw_sprite_ext(sButtonZucchini, 2, xx + 8, yy + (100 + _scale), _scale, _scale, 0, c_white, 1);
	
	if point_in_rectangle(mx, my, xx + 8, yy + (100 + _scale), xx + 72, yy + (164 + _scale)) {
		
		if global.userStats.coins >= 2 {
			draw_sprite_ext(sButtonZucchini, 1, xx + 8, yy + (100 + _scale), _scale, _scale, 0, c_white, 1);
			
			if mouse_check_button(mb_left) {
				seedShop = false;
				global.state = "GUI";
				global.FarmingItems.zucchiniSeeds[$ "amount"] += 2;
				global.userStats.coins -= 2;
				instance_deactivate_object(oButtonBack);
			}
		} else draw_sprite_ext(sButtonZucchini, 3, xx + 8, yy + (100 + _scale), _scale, _scale, 0, c_white, 1);
	
		draw_text(xx + 8, yy + 206, "Zucchini Seeds: $2");
	}
	
	
/*
	var _snowPea = instance_create_layer(view_wport[0] / 2.25,  view_hport[0] / 2, "Instances", oButtonSnowPea);
	var _sweetPotato = instance_create_layer(view_wport[0] / 2,  view_hport[0] / 2, "Instances", oButtonSweetPotato);
	var _zucchini = instance_create_layer(view_wport[0] / 1.75,  view_hport[0] / 2, "Instances", oButtonZucchini);

	// Buy Carrot Seeds
	if global.coins >= 1 {
		if position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), _carrot) and mouse_check_button_pressed(mb_left) {
			seedShop = false;
			global.state = "GUI";
			global.carrotSeeds += 3;
			global.coins -= 1;
			instance_deactivate_object(oButtonBack);
			instance_deactivate_object(oButtonCarrot);
			instance_deactivate_object(oButtonSnowPea);
			instance_deactivate_object(oButtonSweetPotato);
			instance_deactivate_object(oButtonZucchini);
		}
	}

	// Buy Snow Pea Seeds
	if global.coins >= 1 {
		if position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), _snowPea) and mouse_check_button_pressed(mb_left) {
			seedShop = false;
			global.state = "GUI";
			global.snowPeaSeeds += 3;
			global.coins -= 1;
			instance_deactivate_object(oButtonBack);
			instance_deactivate_object(oButtonCarrot);
			instance_deactivate_object(oButtonSnowPea);
			instance_deactivate_object(oButtonSweetPotato);
			instance_deactivate_object(oButtonZucchini);
		}
	}
	
	// Buy Sweet Potato Seeds
	if global.coins >= 2 {
		if position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), _sweetPotato) and mouse_check_button_pressed(mb_left) {
			seedShop = false;
			global.state = "GUI";
			global.sweetPotatoSeeds += 3;
			global.coins -= 2;
			instance_deactivate_object(oButtonBack);
			instance_deactivate_object(oButtonCarrot);
			instance_deactivate_object(oButtonSnowPea);
			instance_deactivate_object(oButtonSweetPotato);
			instance_deactivate_object(oButtonZucchini);
		}
	}
	if global.coins >= 2 {
		if position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), _zucchini) and mouse_check_button_pressed(mb_left) {
			seedShop = false;
			global.state = "GUI";
			global.zucchiniSeeds += 2;
			global.coins -= 2;
			instance_deactivate_object(oButtonBack);
			instance_deactivate_object(oButtonCarrot);
			instance_deactivate_object(oButtonSnowPea);
			instance_deactivate_object(oButtonSweetPotato);
			instance_deactivate_object(oButtonZucchini);
		}
	}
*/
}