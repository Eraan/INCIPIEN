for (var i = 0; i < instance_number(oPlayer); ++i) {
    var curPlayer = instance_find(oPlayer, i)
	if curPlayer.amiChopping == true {
		player = curPlayer;
		directionFromPlayer = point_direction(curPlayer.x, curPlayer.y, x, y);
	}
}

switch chooseSprite {
	case 1:
		sprite_index = sOak1;
	break;
	case 2:
		sprite_index = sOak2;
	break;
	case 3:
		sprite_index = sOak3;
	break;
}