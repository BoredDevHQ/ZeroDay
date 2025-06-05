// Inherit the parent event which handles dialog
event_inherited();

// Start following after dialog
if (!following && !instance_exists(obj_dialog) && keyboard_check_released(ord("E")) && distance_to_object(obj_player) < 8) {
    global.d_dev[0].shown = true;
    global.d_dev[1].shown = true;
    following = true;
}

// Exit if in dialog to prevent movement
if (instance_exists(obj_dialog)) exit;

if (following && instance_exists(obj_player)) {
    var _dist = point_distance(x, y, obj_player.x, obj_player.y);
    var _desired_dist = 40;
    
    // Calculate ideal position
    var _dir = point_direction(x, y, obj_player.x, obj_player.y);
    var _ideal_x = obj_player.x - lengthdir_x(_desired_dist, _dir);
    var _ideal_y = obj_player.y - lengthdir_y(_desired_dist, _dir);
    
    // Smoothly approach the target position
    var _approach_speed = 0.15; // Lower = smoother but slower
    if (_dist > _desired_dist + 2) {
        target_x = lerp(target_x, _ideal_x, _approach_speed);
        target_y = lerp(target_y, _ideal_y, _approach_speed);
    }
}

// Smoother movement calculation
var _move_speed = move_speed * 0.6; // Slightly slower than player
var _to_target = point_direction(x, y, target_x, target_y);
var _dist_to_target = min(point_distance(x, y, target_x, target_y), _move_speed);

var _hor = lengthdir_x(_dist_to_target, _to_target) / _move_speed;
var _ver = lengthdir_y(_dist_to_target, _to_target) / _move_speed;

// Move using the collision system
move_and_collide(_hor * move_speed, _ver * move_speed, tilemap);

// Update sprites based on movement with direction inertia
if (_hor != 0 || _ver != 0) {
    // Calculate dominant direction with some inertia
    var _hor_dominant = abs(_hor) > abs(_ver) * 1.2; // 20% threshold for changing direction
    var _ver_dominant = abs(_ver) > abs(_hor) * 1.2;
    
    if (_hor_dominant) {
        // Moving primarily horizontally
        if (_hor > 0) sprite_index = spr_accomplice_walk_right;
        else sprite_index = spr_accomplice_walk_left;
    } else if (_ver_dominant) {
        // Moving primarily vertically
        if (_ver > 0) sprite_index = spr_accomplice_walk_down;
        else sprite_index = spr_accomplice_walk_up;
    }
    // If neither is dominant, keep current walking direction
} else {
    // When standing still, smoothly transition to idle
    if (sprite_index == spr_accomplice_walk_right) sprite_index = spr_accomplice_idle_right;
    else if (sprite_index == spr_accomplice_walk_left) sprite_index = spr_accomplice_idle_left;
    else if (sprite_index == spr_accomplice_walk_down) sprite_index = spr_accomplice_idle_down;
    else if (sprite_index == spr_accomplice_walk_up) sprite_index = spr_accomplice_idle_up;
}
