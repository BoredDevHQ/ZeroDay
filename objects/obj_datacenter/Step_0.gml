if (place_meeting(x, y, obj_player)) {
    if (!was_in_zone) { // Player just entered the zone
        display_bridge_info = true;
        if (!has_played_sound) {
            audio_play_sound(blip, 1, false);
            has_played_sound = true;
        }
    }
    was_in_zone = true;
} else {
    display_bridge_info = false;
    was_in_zone = false;
    has_played_sound = false;
}