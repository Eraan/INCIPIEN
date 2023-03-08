draw_self();

if displayItems == "none" {
	image_index = 0;
}

if displayItems == "carrot" {
	image_index = 1;
	draw_text_transformed(x + 1, y - 2, carrots, .20, .20, 0);
	crateFilled = true;
	carrots += global.carrots;
	global.carrots -= global.carrots;
}

if displayItems == "snowPeas" {
	image_index = 2;
	draw_text_transformed(x + 1, y - 2, snowPeas, .20, .20, 0);
	crateFilled = true;
	snowPeas += global.snowPeas;
	global.snowPeas -= global.snowPeas;
}

if displayItems == "sweetPotatos" {
	image_index = 3;
	draw_text_transformed(x + 1, y - 2, sweetPotatos, .20, .20, 0);
	crateFilled = true;
	sweetPotatos += global.sweetPotatos;
	global.sweetPotatos -= global.sweetPotatos;
}

if displayItems == "zucchini" {
	image_index = 4;
	draw_text_transformed(x + 1, y - 2, zucchini, .20, .20, 0);
	crateFilled = true;
	zucchini += global.zucchini;
	global.zucchini -= global.zucchini;
}

if crateFilled == false {
	if place_meeting(x, y + 16, oPlayer) or place_meeting(x, y - 16, oPlayer) or place_meeting(x - 16, y, oPlayer) or place_meeting(x + 16, y, oPlayer) {
		if position_meeting(device_mouse_x(0), device_mouse_y(0), id) and mouse_check_button_pressed(mb_left) {

			choosePlant = irandom_range(1, 4);
		
			switch (choosePlant) {
				case 1:
					if global.carrots > 0 {
						displayItems = "carrot";
						break;
					}
					if global.snowPeas > 0 {
						displayItems = "snowPeas";
						break;
					}
					if global.sweetPotatos > 0 {
						displayItems = "sweetPotatos";
						break;
					}
					if global.zucchini > 0 {
						displayItems = "zucchini";
						break;
					}
					
				case 2:
					if global.snowPeas > 0 {
						displayItems = "snowPeas";
						break;
					}
					if global.sweetPotatos > 0 {
						displayItems = "sweetPotatos";
						break;
					}
					if global.zucchini > 0 {
						displayItems = "zucchini";
						break;
					}
					if global.carrots > 0 {
						displayItems = "carrot";
						break;
					}
				
				case 3:
					if global.sweetPotatos > 0 {
						displayItems = "sweetPotatos";
						break;
					}
					if global.zucchini > 0 {
						displayItems = "zucchini";
						break;
					}
					if global.carrots > 0 {
						displayItems = "carrot";
						break;
					}
					if global.snowPeas > 0 {
						displayItems = "snowPeas";
						break;
					}
				
				case 4:
					if global.zucchini > 0 {
						displayItems = "zucchini";
						break;
					}
					if global.carrots > 0 {
						displayItems = "carrot";
						break;
					}
					if global.snowPeas > 0 {
						displayItems = "snowPeas";
						break;
					}
					if global.sweetPotatos > 0 {
						displayItems = "sweetPotatos";
						break;
					}
			}
		}
	}
}


if oTruck.path_position == .25 {
	oTruck.produce.carrots += carrots;
	carrots -= carrots;
	
	oTruck.produce.snowPeas += snowPeas;
	snowPeas -= snowPeas;
	
	oTruck.produce.sweetPotatos += sweetPotatos;
	sweetPotatos -= sweetPotatos;
	
	oTruck.produce.zucchini += zucchini;
	zucchini -= zucchini;
	
	displayItems = "none";
}