// Call parent event first
event_inherited();

// Initialize hacking-specific variables
is_hacking = false;
hack_progress = 0;
hack_duration = 45 * room_speed; // 45 seconds in steps

// Initialize enemy spawn timer (3 seconds = 3 * room_speed)
spawn_interval = 3 * room_speed;
spawn_timer = 0;
hack_completed = false; // Flag to track if hack timer is complete
alarm[0] = -1; // Will be set when hacking starts
