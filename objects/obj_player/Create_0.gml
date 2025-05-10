move_speed = 1;

tilemap = layer_tilemap_get_id("Tiles_Col");

hp = 20;
hp_total = hp;
damage = 1;
charge = 0;

facing = 0;

// Load saved XP values if they exist
if(variable_global_exists("player_xp")) {
    xp = global.player_xp;
    xp_require = global.player_xp_require;
    level = global.player_level;
} else {
    xp = 0;
    xp_require = 100;
    level = 1;
}

last_attack_time = 0;
can_attack = true;
attack_cooldown = 15; // 15ms cooldown

function add_xp(_xp_to_add)
{
    xp += _xp_to_add;
    if(xp >= xp_require)
    {
        level++;
        xp -= xp_require;
        xp_require *= 1.4;
        
        hp_total += 5;
        hp = hp_total;
        damage += 0.8;
        
        create_dialog([
        {
            name: "Congrats",
            msg: $"You leveled up! Your new stats are:\nLVL: {level}\nHP {hp_total}\nDMG {damage}"
        }
        ])
    }
}
