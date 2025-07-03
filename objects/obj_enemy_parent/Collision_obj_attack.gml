// Attack event with player
if (alarm[1] < 0)
{
    audio_play_sound(metal_impact, 0, false);
    hp -= other.damage;
    image_blend = c_red;
    
    var knockback_strength = 3; 
    knockback_vel_x = sign(x - other.x) * knockback_strength;
    knockback_vel_y = sign(y - other.y) * knockback_strength;
    alarm[1] = 20;
}