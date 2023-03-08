function add_carrot(amountAdded) {
	if !variable_struct_exists(global.Items, "carrot") {
		global.Items.carrot = {
			name : "Carrot",
			price : 2,
			amount : amountAdded,
			sprite : sCarrot,
			object : oCarrot,
			type : "Farming"
		};
	} else global.Items.carrot[$ "amount"] += amountAdded;
}

function add_carrot_seeds(amountAdded) {
	if !variable_struct_exists(global.Items, "carrotSeeds") {
		global.Items.carrotSeeds = {
			name : "Carrot Seeds",
			price : 1,
			amount : amountAdded,
			sprite : sCarrotSeeds,
			object : oCarrotSeeds,
			type : "Farming"
		};
	} else global.Items.carrotSeeds[$ "amount"] += amountAdded;
}

function add_snow_pea(amountAdded) {
	if !variable_struct_exists(global.Items, "snowPea") {
		global.Items.snowPea = {
			name : "Snow Pea",
			price : 2,
			amount : amountAdded,
			sprite : sSnowPea,
			object : oSnowPea,
			type : "Farming"
		};
	} else global.Items.snowPea[$ "amount"] += amountAdded;
}

function add_snow_pea_seeds(amountAdded) {
	if !variable_struct_exists(global.Items, "snowPeaSeeds") {
		global.Items.snowPeaSeeds = {
			name : "Snow Pea Seeds",
			price : 1,
			amount : amountAdded,
			sprite : sSnowPeaSeeds,
			object : oSnowPeaSeeds,
			type : "Farming"
		};
	} else global.Items.snowPeaSeeds[$ "amount"] += amountAdded;
}

function add_sweet_potato(amountAdded) {
	if !variable_struct_exists(global.Items, "sweetPotato") {
		global.Items.sweetPotato = {
			name : "Sweet Potato",
			price : 6,
			amount : amountAdded,
			sprite : sSweetPotato,
			object : oSweetPotato,
			type : "Farming"
		};
	} else global.Items.sweetPotato[$ "amount"] += amountAdded;
}

function add_sweet_potato_seeds(amountAdded) {
	if !variable_struct_exists(global.Items, "sweetPotatoSeeds") {
		global.Items.sweetPotatoSeeds = {
			name : "Sweet Potato Seeds",
			price : 2,
			amount : amountAdded,
			sprite : sSweetPotatoSeeds,
			object : oSweetPotatoSeeds,
			type : "Farming"
		};
	} else global.Items.sweetPotatoSeeds[$ "amount"] += amountAdded;
}

function add_zucchini(amountAdded) {
	if !variable_struct_exists(global.Items, "zucchini") {
		global.Items.zucchini = {
			name : "Zucchini",
			price : 8,
			amount : amountAdded,
			sprite : sZucchini,
			object : oZucchini,
			type : "Farming"
		};
	} else global.Items.zucchini[$ "amount"] += amountAdded;
}

function add_zucchini_seeds(amountAdded) {
	if !variable_struct_exists(global.Items, "zucchiniSeeds") {
		global.Items.zucchiniSeeds = {
			name : "Zucchini Seeds",
			price : 8,
			amount : amountAdded,
			sprite : sZucchiniSeeds,
			object : oZucchiniSeeds,
			type : "Farming"
		};
	} else global.Items.zucchiniSeeds[$ "amount"] += amountAdded;
}

function add_oak_logs() {
	if !variable_struct_exists(global.Items, "oakLogs") {
		global.Items.oakLogs = {
			name : "Oak Logs",
			price : 15,
			amount : 1,
			sprite : sOakLogs,
			object : oOakLogs,
			type : "Forestry"
		};
	} else global.Items.oakLogs[$ "amount"] += 1;
}

function add_pine_logs() {
	if !variable_struct_exists(global.Items, "pineLogs") {
		global.Items.pineLogs = {
			name : "Pine Logs",
			price : 20,
			amount : 1,
			sprite : sPineLogs,
			object : oPineLogs,
			type : "Forestry"
		};
	} else global.Items.pineLogs[$ "amount"] += 1;
}

function add_copper_ore() {
	if !variable_struct_exists(global.Items, "copperOre") {
		global.Items.copperOre = {
			name : "Copper Ore",
			price : 5,
			amount : 1,
			sprite : sCopperOre,
			object : oCopperOre,
			type : "Mining"
		};
	} else global.Items.copperOre[$ "amount"] += 1;
}

function add_tin_ore() {
	if !variable_struct_exists(global.Items, "tinOre") {
		global.Items.tinOre = {
			name : "Iron Ore",
			price : 5,
			amount : 1,
			sprite : sTinOre,
			object : oTinOre,
			type : "Mining"
		};
	} else global.Items.tinOre[$ "amount"] += 1;
}

function add_iron_ore() {
	if !variable_struct_exists(global.Items, "ironOre") {
		global.Items.ironOre = {
			name : "Iron Ore",
			price : 25,
			amount : 1,
			sprite : sIronOre,
			object : oIronOre,
			type : "Mining"
		};
	} else global.Items.ironOre[$ "amount"] += 1;
}

function add_coal() {
	if !variable_struct_exists(global.Items, "coal") {
		global.Items.coal = {
			name : "Coal",
			price : 15,
			amount : 1,
			sprite : sCoal,
			object : oCoal,
			type : "Mining"
		};
	} else global.Items.coal[$ "amount"] += 1;
}

function add_bronze_bar() {
	if !variable_struct_exists(global.Items, "bronzeBar") {
		global.Items.bronzeBar = {
			name : "Bronze Bar",
			price : 15,
			amount : 1,
			sprite : sBronzeBar,
			object : oBronzeBar,
			type : "Smithing"
		};
	} else global.Items.bronzeBar[$ "amount"] += 1;
}

function add_iron_bar() {
	if !variable_struct_exists(global.Items, "ironBar") {
		global.Items.ironBar = {
			name : "Iron Bar",
			price : 20,
			amount : 1,
			sprite : sIronBar,
			object : oIronBar,
			type : "Smithing"
		};
	} else global.Items.ironBar[$ "amount"] += 1;
}

function add_steel_bar() {
	if !variable_struct_exists(global.Items, "steelBar") {
		global.Items.steelBar = {
			name : "Steel Bar",
			price : 40,
			amount : 1,
			sprite : sSteelBar,
			object : oSteelBar,
			type : "Smithing"
		};
	} else global.Items.steelBar[$ "amount"] += 1;
}
	
function add_mithril_bar() {
	if !variable_struct_exists(global.Items, "mithrilBar") {
		global.Items.mithrilBar = {
			name : "Mithril Bar",
			price : 110,
			amount : 1,
			sprite : sMithrilBar,
			object : oMithrilBar,
			type : "Smithing"
		};
	} else global.Items.mithrilBar[$ "amount"] += 1;
}
	
function add_bronze_sword() {
	if !variable_struct_exists(global.Items, "bronzeSword") {
		global.Items.bronzeSword = {
			name : "Bronze Sword",
			price : 40,
			amount : 1,
			sprite : sBronzeSword,
			object : oBronzeSword,
			type : "Weapon",
			strengthReq : 1,
			attack : 1
		};
	} else global.Items.bronzeSword[$ "amount"] += 1;
}

function add_iron_sword() {
	if !variable_struct_exists(global.Items, "ironSword") {
		global.Items.ironSword = {
			name : "Iron Sword",
			price : 55,
			amount : 1,
			sprite : sIronSword,
			object : oIronSword,
			type : "Weapon",
			strengthReq : 2,
			attack : 2
		};
	} else global.Items.ironSword[$ "amount"] += 1;
}

function add_steel_sword() {
	if !variable_struct_exists(global.Items, "steelSword") {
		global.Items.steelSword = {
			name : "Steel Sword",
			price : 115,
			amount : 1,
			sprite : sSteelSword,
			object : oSteelSword,
			type : "Weapon",
			strengthReq : 5,
			attack : 5
		};
	} else global.Items.steelSword[$ "amount"] += 1;
}

function add_mithril_sword() {
	if !variable_struct_exists(global.Items, "mithrilSword") {
		global.Items.mithrilSword = {
			name : "Mithril Sword",
			price : 300,
			amount : 1,
			sprite : sMithrilSword,
			object : oMithrilSword,
			type : "Weapon",
			strengthReq : 10,
			attack : 10
		};
	} else global.Items.mithrilSword[$ "amount"] += 1;
}