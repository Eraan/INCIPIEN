instance_destroy();

if !variable_struct_exists(global.Items, "bronzeAxe") {
	global.Items.bronzeAxe = {
		name : "Bronze Axe",
		price : 45,
		amount : 1,
		sprite : sBronzeAxe,
		object : oBronzeAxe
	};
} else global.Items.bronzeAxe[$ "amount"] += 1;