if (alarm[1] < 0)
{
    audio_play_sound(metal_impact, 0, false);
    hp -= other.damage;
    image_blend = c_red;
    
    kb_x = sign(x -other.x);
    kb_y = sign(y -other.y);
    alarm[1] = 20;
    
}