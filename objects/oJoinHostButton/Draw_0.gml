draw_self();
draw_set_valign(fa_center);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text(x, y, "host " + string(local_host_number) +  "with " + string(local_number_of_player) + " player");
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_set_color(c_black);