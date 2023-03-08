/*
load_game();

view_enabled = true;
view_visible[0] = true;

var _w = global.res_width;
var _h = global.res_height;
var _cam = camera_create_view(0, 0, _w / 4, _h / 4);

camera_set_view_target(_cam, oPlayer);
camera_set_view_border(_cam, _w / 8, _h / 8);

view_hport[0] = global.res_height;
view_wport[0] = global.res_width;

view_camera[0] = _cam;

// Network
show_debug_message("Server startin now...");