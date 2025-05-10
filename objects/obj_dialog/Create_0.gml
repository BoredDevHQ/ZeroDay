messages = [];
current_message = -1;
current_char = 0;
draw_message = "";

default_char_speed = 0.5;  // Default speed when no sound is playing
char_speed = default_char_speed;
input_key = ord("E");

gui_w = display_get_gui_width();
gui_h = display_get_gui_height();

next_room = false;

// Sound-related variables
talking_sound = noone;