stopped = false;
path_speed = 0.5;
path_start(truckRun, path_speed, path_action_stop, true);

crateStopX = path_get_point_x(truckRun, 3);
crateStopY = path_get_point_y(truckRun, 3);
shopStopX = path_get_point_x(truckRun, 8);
shopStopY = path_get_point_y(truckRun, 8);

// Inventory
produce = 
{
	carrots : 0,
	snowPeas : 0,
	sweetPotatos : 0,
	zucchini : 0,
}

truckFull = false;