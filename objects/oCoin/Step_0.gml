// Pickup Coin(s) by Player
if place_meeting(x, y, oPlayer)
{
	instance_deactivate_object(id);
	global.userStats.coins += 1;
}