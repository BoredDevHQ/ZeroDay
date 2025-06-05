if (current_message < 0) exit;
    
var _str = messages[current_message].msg;
var _msg = messages[current_message];

// Check for skip button click
var _skip_x = gui_w - skip_btn_w - skip_btn_margin;
var _skip_y = gui_h - skip_btn_h - skip_btn_margin;
if (skip_btn_hover && mouse_check_button_pressed(mb_left)) {
    // Stop any playing sounds
    if (audio_is_playing(talking)) {
        audio_stop_sound(talking);
    }
    if (variable_struct_exists(_msg, "sound") && audio_exists(_msg.sound)) {
        audio_stop_sound(_msg.sound);
    }
    
    // Skip to the end of dialog
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
        // Play default talking sound if no specific sound is set
        audio_sound_gain(talking, 0.5, 0); // Set volume to 50%
        talking_sound = audio_play_sound(talking, 5, true); // Loop the sound
    }
}


if (current_char < string_length(_str))
{
    current_char += char_speed * (1 + keyboard_check(input_key));
    draw_message = string_copy(_str, 0, current_char);
}
else
{
    // Stop the talking sound when text is fully displayed
    if (audio_is_playing(talking) && !variable_struct_exists(_msg, "sound"))
    {
        audio_stop_sound(talking);
    }
    
    if (keyboard_check_pressed(input_key))
    {
        current_message++;
        if (current_message >= array_length(messages))
        {
            // Stop the talking sound when dialog ends
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
