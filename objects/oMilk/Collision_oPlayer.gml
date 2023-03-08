instance_destroy();

if !variable_struct_exists(global.Items, "milk") {
	global.Items.milk = {
		name : "Milk",
		price : 4,
		amount : 1,
		sprite : sMilkJar,
		object : oMilk
	};
} else global.Items.milk[$ "amount"] += 1;