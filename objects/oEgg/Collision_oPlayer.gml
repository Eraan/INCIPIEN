instance_destroy();

if !variable_struct_exists(global.Items, "egg") {
	global.Items.egg = {
		name : "Egg",
		price : 1,
		amount : 1,
		sprite : sEgg,
		object : oEgg
	};
} else global.Items.egg[$ "amount"] += 1;