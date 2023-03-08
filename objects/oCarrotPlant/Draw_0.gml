draw_self();
if readyHarvest == true {
	if oPlayer.x == x and oPlayer.y == y { //place_meeting(x, y, oPlayer)
		draw_sprite_ext(sCoin, 0, x + 11, y - 3, 1, 1, 0, c_white, 1);
	}
}