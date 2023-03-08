draw_self();
draw_set_valign(fa_center);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_set_font(fPixel);
draw_text(x, y, "host " + string(local_host_number) +  "with " + string(local_number_of_player) + " player");