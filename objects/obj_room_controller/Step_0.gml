// Check if there are any enemies left in the room
if (instance_number(obj_enemy_parent) <= 0) {
    // Save player XP before room transition
    if(instance_exists(obj_player)) {
        global.player_xp = obj_player.xp;
        global.player_xp_require = obj_player.xp_require;
        global.player_level = obj_player.level;
    }
    room_goto_next();
}