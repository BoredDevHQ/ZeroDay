winw = window_get_width();
winh = window_get_height();

move_speed = 1;

tilemap = layer_tilemap_get_id("Tiles_Col");

// Load saved stats if they exist
if(variable_global_exists("player_level")) {
    hp = global.player_hp;
    hp_total = global.player_hp_total;
    damage = global.player_damage;
    xp = global.player_xp;
    xp_require = global.player_xp_require;
    level = global.player_level;
    total_xp = global.player_total_xp;
} else {
    // Initial stats for new game
    hp = 20;
    hp_total = hp;
    damage = 1;
    xp = 0;
    total_xp = 0;
    xp_require = 100; 
    level = 1;
    
    // Save initial stats
    global.player_hp = hp;
    global.player_hp_total = hp_total;
    global.player_damage = damage;
    global.player_xp = xp;
    global.player_total_xp = total_xp;
    global.player_xp_require = xp_require;
    global.player_level = level;
}

// Variables to track stat increases
last_health = hp_total;
last_damage = damage;

charge = 0;
facing = 0;

// Level up notification variables
show_level_notification = false;
notification_timer = 0;
notification_duration = room_speed * 3; 

last_attack_time = 0;
can_attack = true;
attack_cooldown = 15; 
function add_xp(_xp_to_add)
{
    xp += _xp_to_add;
    total_xp += _xp_to_add; 
    
    if(xp >= xp_require)
    {

        last_health = hp_total;
        last_damage = damage;
        
        level++;
        xp -= xp_require;
        xp_require *= 1.4;
        
        hp_total += 5;
        hp = hp_total;
        damage += 0.8;
        

        global.player_hp = hp;
        global.player_hp_total = hp_total;
        global.player_damage = damage;
        global.player_xp = xp;
        global.player_total_xp = total_xp;
        global.player_xp_require = xp_require;
        global.player_level = level;
        

        show_level_notification = true;
        notification_timer = notification_duration;
    }
    

    global.player_xp = xp;
    global.player_total_xp = total_xp;
}
