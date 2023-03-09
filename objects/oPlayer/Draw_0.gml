draw_self();

draw_text_transformed(x + 16, y, string(amiChopping), .25, .25, 0);

//CHOPPING

if place_meeting(self.x, self.y - 16, oOak104) or place_meeting(self.x, self.y + 16, oOak104) or place_meeting(self.x - 16, self.y, oOak104) or place_meeting(self.x + 16, self.y, oOak104) {
		
	if position_meeting(device_mouse_x(0), device_mouse_y(0), oOak104) && mouse_check_button_pressed(mb_left) {
			
		if (currentPlayer) && oOak104.ready == true {
			amiChopping = true;
		} 
	}
}

draw_text_transformed(x + 16, y, id, .25, .25, 0);
draw_text_transformed(x + 16, y + 4, amiChopping, .25, .25, 0);