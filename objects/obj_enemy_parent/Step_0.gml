if (instance_exists(obj_dialog)) exit;

var _hor_normal = clamp(target_x - x, -1, 1);
var _ver_normal = clamp(target_y - y, -1, 1);

var _separation_radius = sprite_width * 0.8;
var _separation_force = 0.2;

var _repulsion_x = 0;
var _repulsion_y = 0;

with (obj_enemy_parent) {
    if (id != other.id) {
        var _dist = point_distance(x, y, other.x, other.y);
        
        if (_dist < _separation_radius && _dist > 0) {
            var _dir = point_direction(x, y, other.x, other.y);
            var _overlap = _separation_radius - _dist;
            
            _repulsion_x += lengthdir_x(_overlap * _separation_force, _dir);
            _repulsion_y += lengthdir_y(_overlap * _separation_force, _dir);
        }
    }
}

var _total_hor_move = (_hor_normal * move_speed) + knockback_vel_x + _repulsion_x;
var _total_ver_move = (_ver_normal * move_speed) + knockback_vel_y + _repulsion_y;

knockback_vel_x *= knockback_friction;
knockback_vel_y *= knockback_friction;

if (abs(knockback_vel_x) < 0.01) knockback_vel_x = 0;
if (abs(knockback_vel_y) < 0.01) knockback_vel_y = 0;

move_and_collide(_total_hor_move, _total_ver_move, tilemap);