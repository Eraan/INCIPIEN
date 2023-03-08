///@description ALL DATA IS STORED HERE
inventoryToggled = false;
levelsToggled = false;

global.state = "GUI";

// User Stats
global.userStats = 
{
	user_id : 0,
	new_user : true,
	username : "noone",
	position_x : 0,
	position_y : 0,
	level : 1,
	level_xp : 0,
	coins : 1,
	hp : 10,
	totalLevels : 8,
	totalQuests : 0
}

// User Levels
experienceRate = 125;
global.userLevels = 
{
	strength : 1,
	strength_xp : 0,
	defense : 1,
	defense_xp : 0,
	range : 1,
	range_xp : 0,
	magic : 1,
	magic_xp : 0,
	farming : 1,
	farming_xp : 0,
	mining : 1,
	mining_xp : 0,
	smithing : 1,
	smithing_xp : 0,
	forestry : 1,
	forestry_xp : 0
}

// Item Data
global.Items = {};

global.weapon = {};