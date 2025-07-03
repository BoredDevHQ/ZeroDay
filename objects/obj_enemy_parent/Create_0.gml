// Parent script for the enemies
target_x = x;
target_y = y;

alarm[0] = 60;
// collide with Tiles_Col"
tilemap = layer_tilemap_get_id("Tiles_Col");

// knockback
knockback_vel_x = 0; 
knockback_vel_y = 0; 
knockback_friction = 0.8; 

hp_total = hp;