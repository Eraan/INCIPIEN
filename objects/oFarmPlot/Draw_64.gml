var _scale = 4;
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
var xposition = 8;
var yposition = 8;

if id.choosePlant == true {
	if image_index == 2 {
		draw_set_alpha(0.5);
		draw_rectangle(0, 0, view_wport[0], view_hport[0], false);
		draw_set_alpha(1);
	
		draw_sprite_ext(sGenericUI, 0, view_wport[0] / 2, view_hport[0] / 2, _scale, _scale, 0, c_white, 1);
		xx = view_wport[0] / 2 - 128;
		yy = view_hport[0] / 2 - 128;
	
		var _back = instance_create_layer(8,  view_hport[0] - 72, "GUI", oButtonBack);
		
		// Go Back
		if position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), _back) and mouse_check_button_pressed(mb_left) {
			choosePlant = false;
			global.state = "GUI";
			instance_deactivate_object(oButtonBack);
		}
		
		
		// Carrots
		draw_sprite_ext(sCarrotSeeds, 0, xx + 64, yy + 20, _scale, _scale, 0, c_white, 1);
	
		if point_in_rectangle(mx, my, xx + 64, yy + 20, xx + 128, yy + 84) {
		
			if variable_struct_exists(global.Items, "carrotSeeds") && global.Items.carrotSeeds[$ "amount"] > 0 {
				draw_sprite_ext(sHoverItemAvailable, 0, xx + 64, yy + 20, _scale, _scale, 0, c_white, 1);
			
				if mouse_check_button(mb_left) {
					audio_play_sound(tillDirtSound, 10, false, 1, 0, 1.5);
					global.Items.carrotSeeds[$ "amount"] -= 1;
					seedType = "carrot";
					choosePlant = false;
					global.state = "GUI";
				
					instance_deactivate_object(oButtonBack);
				}
			} else draw_sprite_ext(sHoverItemUnavailable, 0, xx + 64, yy + 20, _scale, _scale, 0, c_white, 1);
		
			draw_text(xx - 100, yy + 47, "Plant Carrots");
			//draw_sprite_ext(sCoin, 0, xx - 108, yy + 203, _scale, _scale, 0, c_white, 1);
			//draw_text(xx - 80, yy + 204, "-20");
		}
		
		// Snow Peas
		draw_sprite_ext(sSnowPeaSeeds, 0, xx + (128 + 12), yy + 20, _scale, _scale, 0, c_white, 1);
	
		if point_in_rectangle(mx, my, xx + (128 + 12), yy + 20, xx + (192 + 12), yy + 84) {
		
		if variable_struct_exists(global.Items, "snowPeaSeeds") && global.Items.snowPeaSeeds[$ "amount"] > 0 {
			
				draw_sprite_ext(sHoverItemAvailable, 0, xx + (128 + 12), yy + 20, _scale, _scale, 0, c_white, 1);
			
				if mouse_check_button(mb_left) {
					audio_play_sound(tillDirtSound, 10, false, 1, 0, 1.5);
					global.Items.snowPeaSeeds[$ "amount"] -= 1;
					seedType = "snowPea";
					choosePlant = false;
					global.state = "GUI";
				
					instance_deactivate_object(oButtonBack);
				}
			} else draw_sprite_ext(sHoverItemUnavailable, 0, xx + (128 + 12), yy + 20, _scale, _scale, 0, c_white, 1);
		
			draw_text(xx - 100, yy + 47, "Snow Peas");
			//draw_sprite_ext(sCoin, 0, xx - 108, yy + 203, _scale, _scale, 0, c_white, 1);
			//draw_text(xx - 80, yy + 204, "-25");
		}
	
		// Sweet Potatos
		draw_sprite_ext(sSweetPotatoSeeds, 0, xx + (192 + (12 * 2)), yy + 20, _scale, _scale, 0, c_white, 1);
	
		if point_in_rectangle(mx, my, xx + (192 + (12 * 2)), yy + 20, xx + (256 + (12 * 2)), yy + 84) {
		
			if variable_struct_exists(global.Items, "sweetPotatoSeeds") && global.Items.sweetPotatoSeeds[$ "amount"] > 0 {
				draw_sprite_ext(sHoverItemAvailable, 0, xx + (192 + (12 * 2)), yy + 20, _scale, _scale, 0, c_white, 1);
			
				if mouse_check_button(mb_left) {
					audio_play_sound(tillDirtSound, 10, false, 1, 0, 1.5);
					global.Items.sweetPotatoSeeds[$ "amount"] -= 1;
					seedType = "sweetPotato";
					choosePlant = false;
					global.state = "GUI";
					
					instance_deactivate_object(oButtonBack);
				}
			} else draw_sprite_ext(sHoverItemUnavailable, 0, xx + (192 + (12 * 2)), yy + 20, _scale, _scale, 0, c_white, 1);
	
			draw_text(xx - 100, yy + 47, "Sweet Potatos");
			//draw_sprite_ext(sCoin, 0, xx - 108, yy + 203, _scale, _scale, 0, c_white, 1);
			//draw_text(xx - 80, yy + 204, "-45");
		}
	
		// Zucchini
		draw_sprite_ext(sZucchiniSeeds, 0, xx + (256 + (12 * 3)), yy + 20, _scale, _scale, 0, c_white, 1);
	
		if point_in_rectangle(mx, my, xx + (256 + (12 * 3)), yy + 20, xx + (320 + (12 * 3)), yy + 84) {
		
			if variable_struct_exists(global.Items, "zucchiniSeeds") && global.Items.zucchiniSeeds[$ "amount"] > 0 {
				draw_sprite_ext(sHoverItemAvailable, 0, xx + (256 + (12 * 3)), yy + 20, _scale, _scale, 0, c_white, 1);
			
				if mouse_check_button(mb_left) {
					audio_play_sound(tillDirtSound, 10, false, 1, 0, 1.5);
					global.Items.zucchiniSeeds[$ "amount"] -= 1;
					seedType = "zucchini";
					choosePlant = false;
					global.state = "GUI";
				
					instance_deactivate_object(oButtonBack);
				}
			} else draw_sprite_ext(sHoverItemUnavailable, 0, xx + (256 + (12 * 3)), yy + 20, _scale, _scale, 0, c_white, 1);
	
			draw_text(xx - 100, yy + 47, "Zucchini");
			//draw_sprite_ext(sCoin, 0, xx - 108, yy + 203, _scale, _scale, 0, c_white, 1);
			//draw_text(xx - 80, yy + 204, "-135");
		}
	
		draw_set_color(c_black);
	
		/*
		// Carrots
		draw_sprite_ext(sCarrotSeeds, 1, xx + 8, yy + 36, _scale, _scale, 0, c_white, 1);
		
		if point_in_rectangle(mx, my, xx + 8, yy + 36, xx + 72, yy + 100) {
			
			if variable_struct_exists(global.Items, "carrotSeeds") && global.Items.carrotSeeds[$ "amount"] > 0 {
				draw_sprite_ext(sHoverItemAvailable, 0, xx + 8, yy + 36, _scale, _scale, 0, c_white, 1);
			
				if mouse_check_button(mb_left) {
					audio_play_sound(tillDirtSound, 10, false, 1, 0, 1.5);
					
					choosePlant = false;
					global.state = "GUI";
					seedType = "carrot";
					instance_deactivate_object(oButtonBack);
					global.FarmingItems.carrotSeeds.amount -= 1;
				}
	
				draw_text(xx + 8, yy + 206, "Carrot Seeds: " + string(global.FarmingItems.carrotSeeds.amount));
			} else draw_sprite_ext(sHoverItemUnavailable, 0, xx + 8, yy + 36, _scale, _scale, 0, c_white, 1);
		}
		*/
		
		// Snow Peas
		if global.FarmingItems.snowPeaSeeds.amount > 0 && global.userLevels.farming >= 2 {
			draw_sprite_ext(sButtonSnowPea, 2, xx + (72 + _scale), yy + 36, _scale, _scale, 0, c_white, 1);
	
			if point_in_rectangle(mx, my, xx + (72 + _scale), yy + 36, xx + (136 + _scale), yy + 100) {
		
				draw_sprite_ext(sButtonSnowPea, 1, xx + (72 + _scale), yy + 36, _scale, _scale, 0, c_white, 1);
			
				if mouse_check_button(mb_left) {
					audio_play_sound(tillDirtSound, 10, false, 1, 0, 1.5);
					
					choosePlant = false;
					global.state = "GUI";
					seedType = "snowPea";
					instance_deactivate_object(oButtonBack);
					global.FarmingItems.snowPeaSeeds.amount -= 1;
				}
	
				draw_text(xx + 8, yy + 206, "Snow Pea Seeds: " + string(global.FarmingItems.snowPeaSeeds.amount));
			}
		}
	
		// Sweet Potatos
		if global.FarmingItems.sweetPotatoSeeds.amount && global.userLevels.farming >= 5 {
			draw_sprite_ext(sButtonSweetPotato, 2, xx + (136 + (_scale * 2)), yy + 36, _scale, _scale, 0, c_white, 1);
	
			if point_in_rectangle(mx, my, xx + (136 + (_scale * 2)), yy + 36, xx + (200 + (_scale * 2)), yy + 100) {
		
				draw_sprite_ext(sButtonSweetPotato, 1, xx + (136 + (_scale * 2)), yy + 36, _scale, _scale, 0, c_white, 1);
			
				if mouse_check_button(mb_left) {
					audio_play_sound(tillDirtSound, 10, false, 1, 0, 1.5);
					
					choosePlant = false;
					global.state = "GUI";
					seedType = "sweetPotato";
					instance_deactivate_object(oButtonBack);
					global.FarmingItems.sweetPotatoSeeds.amount -= 1;
				}
		
				draw_text(xx + 8, yy + 206, "Sweet Potato Seeds: " + string(global.FarmingItems.sweetPotatoSeeds.amount));
			}
		}
	
		// Zucchini
		if global.FarmingItems.zucchiniSeeds.amount > 0 && global.userLevels.farming >= 10 {
			draw_sprite_ext(sButtonZucchini, 2, xx + 8, yy + (100 + _scale), _scale, _scale, 0, c_white, 1);
	
			if point_in_rectangle(mx, my, xx + 8, yy + (100 + _scale), xx + 72, yy + (164 + _scale)) {
		
				draw_sprite_ext(sButtonZucchini, 1, xx + 8, yy + (100 + _scale), _scale, _scale, 0, c_white, 1);
			
				if mouse_check_button(mb_left) {
					audio_play_sound(tillDirtSound, 10, false, 1, 0, 1.5);
					
					choosePlant = false;
					global.state = "GUI";
					seedType = "zucchini";
					instance_deactivate_object(oButtonBack);
					global.FarmingItems.zucchiniSeeds.amount -= 1;
				}
	
				draw_text(xx + 8, yy + 206, "Zucchini Seeds: " + string(global.FarmingItems.zucchiniSeeds.amount));
			}
		}
	}
}