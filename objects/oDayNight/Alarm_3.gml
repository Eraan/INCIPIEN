/// @description Set to Day or Night Visually

if night == true {
	alarm[3] = 15;
	if darken < 0.5 {
		darken += 0.01;
	}
}

if night == false {
	alarm[3] = 15;
	if darken > 0.0 {
		darken -= 0.01;
	}
}