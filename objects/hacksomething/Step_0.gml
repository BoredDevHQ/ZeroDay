if (!global.boss_dialog_shown && instance_number(obj_enemy_parent) <= 0) {
    global.boss_dialog_shown = true; 


    if (instance_exists(obj_player)) {
        global.player_xp = obj_player.xp;
        global.player_xp_require = obj_player.xp_require;
        global.player_level = obj_player.level;
    }

    create_dialog(global.d_bossfinish);
}