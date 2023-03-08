if night == true {
	if (alarm[3] < 0) {
		alarm[3] = 30;
	}
	draw_set_alpha(darken);
	draw_set_colour(c_black);
	draw_rectangle(0, 0, view_wport[0], view_hport[0], false);
	draw_set_alpha(1);
}

if night == false {
	if (alarm[3] < 0) {
		alarm[3] = 30;
	}
	draw_set_alpha(darken);
	draw_set_colour(c_black);
	draw_rectangle(0, 0, view_wport[0], view_hport[0], false);
	draw_set_alpha(1);
}