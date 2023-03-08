directionFromPlayer = point_direction(oPlayer.x, oPlayer.y, x, y);
player = oPlayer;

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