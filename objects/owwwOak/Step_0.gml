directionFromPlayer = point_direction(oPlayer.x, oPlayer.y, x, y);
player = oPlayer;

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