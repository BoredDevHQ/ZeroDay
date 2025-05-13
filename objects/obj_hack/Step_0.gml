// Call parent event first to handle can_talk
event_inherited();

// Handle hacking interaction
if (!is_hacking && can_talk && keyboard_check_pressed(input_key))
{
    is_hacking = true;
    spawn_timer = spawn_interval; // Start spawning enemies immediately
}

// Update hacking progress and handle enemy spawning
if (is_hacking)
{
    // Only increment progress and spawn enemies if hack isn't completed
    if (!hack_completed)
    {
        hack_progress++;
        
        // Handle enemy spawning
        spawn_timer--;
        if (spawn_timer <= 0)
        {
            // Spawn obj_enemy1
            var enemy1 = instance_create_layer(35, 46, "Instances", obj_enemy1);
            if (enemy1 != noone) {
                enemy1.image_xscale = 1;
                enemy1.image_yscale = 1;
            }
    
        
            // Spawn obj_enemy2
            var enemy2 = instance_create_layer(35, 113, "Instances", obj_enemy2);
            if (enemy2 != noone) {
                enemy2.image_xscale = 1;
                enemy2.image_yscale = 1;
            }

       
            var enemy4 = instance_create_layer(177, 142, "Instances", obj_enemy1);
            if (enemy4 != noone) {
                enemy4.image_xscale = 1;
                enemy4.image_yscale = 1;
            }    


            
            var enemy6 = instance_create_layer(270, 49, "Instances", obj_enemy2);
            if (enemy6 != noone) {
                enemy6.image_xscale = 1;
                enemy6.image_yscale = 1;
            }  
            
            var enemy7 = instance_create_layer(270, 113, "Instances", obj_enemy2);
            if (enemy7 != noone) {
                enemy7.image_xscale = 1;
                enemy7.image_yscale = 1;
            }              
            
                                                                
            // Reset spawn timer
            spawn_timer = spawn_interval;
        }
        
        // Check if hack timer is complete
        if (hack_progress >= hack_duration)
        {
            hack_completed = true;
        }
    }
    
    // If hack is completed, check if all enemies are defeated
    if (hack_completed && instance_number(obj_enemy_parent) <= 0)
    {
        room_goto_next();
    }
}
