if (keyboard_check_pressed(ord("R")) || keyboard_check_pressed(ord("r"))) {
    if (variable_global_exists("last_room_before_death")) {
        room_goto(global.last_room_before_death);

    }
}