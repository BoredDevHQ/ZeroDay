// Spawn enemies if still hacking
if (is_hacking)
{
    show_debug_message("Alarm 0 triggered! Attempting to spawn enemies...");
    
    // Spawn obj_enemy1
    var enemy1 = instance_create_layer(35, 46, "Instances", obj_enemy1);
    if (enemy1 != noone) {
        show_debug_message("Successfully spawned enemy1");
        enemy1.image_xscale = 1;
        enemy1.image_yscale = 1;
    } else {
        show_debug_message("Failed to spawn enemy1!");
    }
    
    // Spawn obj_enemy2
    var enemy2 = instance_create_layer(35, 113, "Instances", obj_enemy2);
    if (enemy2 != noone) {
        show_debug_message("Successfully spawned enemy2");
        enemy2.image_xscale = 1;
        enemy2.image_yscale = 1;
    } else {
        show_debug_message("Failed to spawn enemy2!");
    }
    
    // Reset alarm for next spawn
    alarm[0] = spawn_interval;
    show_debug_message("Reset alarm[0] to: " + string(spawn_interval));
}
