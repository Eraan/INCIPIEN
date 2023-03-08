if keyboard_check_pressed(ord("1")) {save_game();};

if keyboard_check_pressed(ord("4")) {load_game();};

if keyboard_check_pressed(ord("Q"))
{
    if window_get_fullscreen()
    {
        window_set_fullscreen(false);
    }
    else
    {
        window_set_fullscreen(true);
    }
}