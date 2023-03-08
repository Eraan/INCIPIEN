if isGrowing == true {
	image_speed = 0.0035;
	
	if image_index >= 7 {
		isGrowing = false;
		image_speed = 0;
		image_index = irandom_range(7, 10);
		readyHarvest = true;
	}
} else image_speed = 0;

if readyHarvest == true {
	if oPlayer.x == x and oPlayer.y == y { //place_meeting(x, y, oPlayer)
		if keyboard_check_pressed(ord("E")) {
			with instance_create_layer(x, y, "InstancesGround", oFarmPlot) {
				image_index = 1;
				alarm[0] = 1800;
			}
			instance_deactivate_object(id);
			add_sweet_potato(randomCount);
			global.userLevels.farming_xp += 90;
			temp_message(x + 8, y - 8, "+ 90 XP");
		}
	}
}