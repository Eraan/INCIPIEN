if oPlayer.x == x and oPlayer.y == y { //place_meeting(id.x, id.y, oPlayer)
	if image_index == 2 { // Planting Seed
		if keyboard_check_pressed(ord("E")) {
			id.choosePlant = true;
			global.state = "noGUI";
		}
	}
}

if seedType == "carrot" {
	with instance_create_layer(x, y, "InstancesGround", oCarrotPlant) {
		isGrowing = true;
	}
	instance_deactivate_object(id);
}

if seedType == "snowPea" {
	with instance_create_layer(x, y, "InstancesGround", oSnowPeaPlant) {
		isGrowing = true;
	}
	instance_deactivate_object(id);
}

if seedType == "sweetPotato" {
	with instance_create_layer(x, y, "InstancesGround", oSweetPotatoPlant) {
		isGrowing = true;
	}
	instance_deactivate_object(id);
}

if seedType == "zucchini" {
	with instance_create_layer(x, y, "InstancesGround", oZucchiniPlant) {
		isGrowing = true;
	}
	instance_deactivate_object(id);
}