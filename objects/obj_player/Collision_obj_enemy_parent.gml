if (alarm[0] < 0)
{
    hp -= other.damage;
    alarm[0] = 60;
    image_blend = c_red;
    
    if (hp <= 0)
    {
        // Store the current room before dying
        global.last_room_before_death = room;
        instance_destroy(); 
        room_goto(room_game_over);
    }
}

