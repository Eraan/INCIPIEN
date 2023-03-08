instance_destroy();

if !variable_struct_exists(global.Items, "bronzeBar") {
	add_bronze_bar();
} else global.Items.bronzeBar[$ "amount"] += 1;