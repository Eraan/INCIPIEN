for (var i = 0; i < instance_number(oPlayer); ++i) {
    var curPlayer = instance_find(oPlayer, i)
	if curPlayer.amiChopping == true {
		player = curPlayer;
		directionFromPlayer = point_direction(curPlayer.x, curPlayer.y, x, y);
	}
}

switch chooseSprite {
	case 1:
		sprite_index = sPine1;
	break;
	case 2:
		sprite_index = sPine2;
	break;
	case 3:
		sprite_index = sPine3;
	break;
}