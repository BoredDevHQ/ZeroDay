// Inherit the parent event
event_inherited();

// From enemy parent movement system
target_x = x;
target_y = y;
move_speed = 2;

// State for following behavior
following = false;

// Get tile collision layer
tilemap = layer_tilemap_get_id("Tiles_Col");
