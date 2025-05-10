if (instance_exists(obj_dialog)) exit;
    
var _hor = (keyboard_check(ord("D")) or keyboard_check(vk_right)) 
        - (keyboard_check(ord("A")) or keyboard_check(vk_left));

var _ver = (keyboard_check(ord("S")) or keyboard_check(vk_down)) 
        - (keyboard_check(ord("W")) or keyboard_check(vk_up));

move_and_collide(_hor * move_speed, _ver * move_speed, tilemap, undefined, undefined, undefined, move_speed, move_speed);

if (_hor != 0 or _ver != 0)
{
    if (_ver > 0) sprite_index = spr_player_walk_down; 
    else if (_ver < 0) sprite_index = spr_player_walk_up; 
    else if (_hor > 0) sprite_index = spr_player_walk_right;
    else if (_hor < 0) sprite_index = spr_player_walk_left;
        
    facing = point_direction(0, 0, _hor, _ver);
}
else
{
    if (sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;
    else if (sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left;
    else if (sprite_index == spr_player_walk_down) sprite_index = spr_player_idle_down;
    else if (sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up;
}

if (can_attack && (keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left)))
{
    audio_play_sound(sword_slash, 0, false);
    var _inst = instance_create_depth(x, y, depth, obj_attack);
    _inst.image_angle = facing;
    _inst.damage *= damage;
    can_attack = false;
    alarm[0] = attack_cooldown;
}