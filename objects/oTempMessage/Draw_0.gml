if drawMessage == true {
	draw_set_alpha(opacity/255);
	draw_set_color(c_white);
	draw_text_transformed(x, y, tempMessage, 0.25, 0.25, 0);
	
	if (opacity <= 0) { 
		drawMessage = false;
		instance_destroy();
	}
	
	y -= .1;
	opacity -= 3;
	draw_set_color(c_black);
	draw_set_alpha(1);
}