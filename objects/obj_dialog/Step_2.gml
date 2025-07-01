if (current_message < 0) exit;
    
var _str = messages[current_message].msg;
var _msg = messages[current_message];

 if (skip_btn_hover && mouse_check_button_pressed(mb_left)) { 
    if (audio_is_playing(talking)) {
        audio_stop_sound(talking);
    }
    if (variable_struct_exists(_msg, "sound") && audio_exists(_msg.sound)) {
        audio_stop_sound(_msg.sound);
    }
    
    instance_destroy();
    if (next_room) {
        room_goto_next();
    }
    exit;
}

if (current_char == 0)
{

    char_speed = default_char_speed;
    

    if (audio_is_playing(talking))
    {
        audio_stop_sound(talking);
    }
    
    if (variable_struct_exists(_msg, "sound"))
    {
        var _snd = _msg.sound;
        if (audio_exists(_snd))
        {
            audio_play_sound(_snd, 10, false);
            

            var _duration = audio_sound_length(_snd);
            var _text_length = string_length(_str);
            if (_duration > 0 && _text_length > 0)
            {
              
                char_speed = _text_length / (_duration * room_speed);
            }
        }
    }
    else
    {
        audio_sound_gain(talking, 0.5, 0); 
        talking_sound = audio_play_sound(talking, 5, true); 
    }
}


if (current_char < string_length(_str))
{
    current_char += char_speed * (1 + keyboard_check(input_key));
    draw_message = string_copy(_str, 0, current_char);
}
else
{
    if (audio_is_playing(talking) && !variable_struct_exists(_msg, "sound"))
    {
        audio_stop_sound(talking);
    }
    
    if (keyboard_check_pressed(input_key))
    {
        current_message++;
        if (current_message >= array_length(messages))
        {
            if (audio_is_playing(talking))
            {
                audio_stop_sound(talking);
            }
            instance_destroy();
            
            if (next_room) {
                room_goto_next();}
            
        }
        else
        {
            current_char = 0;
        }
    }
}
