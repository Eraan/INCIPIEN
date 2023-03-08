function temp_message(message_x, message_y, temporary_message) {
	with instance_create_layer(message_x + 8, message_y, "GUI", oTempMessage) {
		drawMessage = true;
		tempMessage = temporary_message;
	}
}
