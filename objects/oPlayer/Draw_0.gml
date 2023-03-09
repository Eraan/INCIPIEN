draw_self();

//CHOPPING


if (currentPlayer) && oPine.ready == true {	
	if place_meeting(x, y - 16, oPine) or place_meeting(x, y + 16, oPine) or place_meeting(x - 16, y, oPine) or place_meeting(x + 16, y, oPine) {
		if position_meeting(device_mouse_x(0), device_mouse_y(0), oPine) {
			
//		if (currentPlayer) && oOak104.ready == true {
			amiChopping = true;
		} 
	}
}



if (currentPlayer) && oOak.ready == true {
	if place_meeting(x, y - 16, oOak) or place_meeting(x, y + 16, oOak) or place_meeting(x - 16, y, oOak) or place_meeting(x + 16, y, oOak) {
		if position_meeting(device_mouse_x(0), device_mouse_y(0), oOak) {
			
//		if (currentPlayer) && oOak104.ready == true {
			amiChopping = true;
		} 
	}
}

draw_text_transformed(x + 16, y, id, .25, .25, 0);
draw_text_transformed(x + 16, y + 4, amiChopping, .25, .25, 0);