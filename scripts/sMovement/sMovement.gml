// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function input_movement() {
	key_up = keyboard_check(vk_up) or keyboard_check(ord("W"));
	key_down = keyboard_check(vk_down) or keyboard_check(ord("S"));
	key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
}
//Testing
/*
function getMovement() {
	if (key_up) {
			
		//if (isMoving == false) {
				
			if !place_meeting(x, y - gridSize, oCollision) {
				direction = 90;
				sprite_index = sPlayerUp;
				image_speed = 1;
				isMoving = true;
				moveTimer = gridSize;
				speedX = 0;
				speedY = -moveSpeed;
			}
		//}
	}
	
	
}
*/

// CHOPPING TREE
function chop_tree() {
	var mx = device_mouse_x(0);
	var my = device_mouse_y(0);
	var tempID = 0;
	var directionToTree = noone;
	var chooseTime = irandom_range(30, 320) / global.userLevels.forestry;
	
	
			
	if place_meeting(x, y - 16, oOak) or place_meeting(x, y + 16, oOak) or place_meeting(x - 16, y, oOak) or place_meeting(x + 16, y, oOak) {
		
		if position_meeting(mx, my, oOak) && mouse_check_button_pressed(mb_left) {
			tempID = collision_point(mx, my, oOak, false, true);
			directionToTree = point_direction(x, y, tempID.x, tempID.y);
			global.Chopping = true;
			
			draw_text(x, y, tempID);
			
			if place_meeting(x, y - 16, tempID) or place_meeting(x, y + 16, tempID) or place_meeting(x - 16, y, tempID) or place_meeting(x + 16, y, tempID) {
			
				if global.userLevels.forestry >= 1 {
					global.Chopping = true;
					audio_play_sound(woodChopSound, 10, true);
					
					tempID.alarm[0] = chooseTime;

					if tempID.ready == false {
						global.Chopping = false;
						global.userLevels.forestry_xp += 20;
						add_oak_logs();
						sprite_index = sPlayer;
						image_speed = 0;
							
						with tempID {
							temp_message(x + 8, y - 8, "+ 20 XP");
							audio_stop_sound(woodChopSound);
							audio_play_sound(treeFallSound, 10, false, 1, 0.0, 1.25);
						}
					}
				} else {
					with tempID {
						temp_message(x + 8, y, "Lvl 1 Forestry Required.");
					}
				}
			}
		}
	}
			
	switch (directionToTree) {
		case 0:
			sprite_index = sPlayerRightChop;
			image_speed = 0.75;
		break;
		case 90:
			sprite_index = sPlayerUpChop;
			image_speed = 0.75;
		break;
		case 180:
			sprite_index = sPlayerLeftChop;
			image_speed = 0.75;
		break;
		case 270:
			sprite_index = sPlayerDownChop;
			image_speed = 0.75;
		break;
	}	
}