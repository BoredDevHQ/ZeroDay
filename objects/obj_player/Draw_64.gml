var _dx = 16;
var _dy = 16;
var _barw = 256;
var _barh = 32;

// properties
draw_set_font(Font1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// healthbar
var _health_barw = _barw * (hp / hp_total);

draw_sprite_stretched(spr_box, 0, _dx, _dy,_barw, _barh);
draw_sprite_stretched_ext(spr_box, 1, _dx, _dy, _health_barw, _barh, c_red, 0.6);

draw_text(_dx + _barw / 2, _dy + _barh / 2, "HEALTH");


// Draw heart icon next to health bar
if (sprite_exists(spr_heart)) // Check if spr_heart exists to prevent errors
{
    var _heart_spr = spr_heart; // The sprite to draw
    var _heart_img = 0;         // The sub-image (frame) of the sprite
    var _heart_scale = 3.5;       // Scale factor for the heart (3 times bigger)

    // Get original dimensions of the heart sprite
    var _heart_original_w = sprite_get_width(_heart_spr);
    var _heart_original_h = sprite_get_height(_heart_spr);

    // Calculate the scaled height for accurate vertical centering
    var _heart_scaled_h = _heart_original_h * _heart_scale;

    // X position: 5% from the left edge of the health bar
    var _heart_x = _dx + (_barw * 0.05);
    var _health_bar_center_y = _dy + (_barh / 1.5);
    var _original_pixel_shift_up = 3;
    var _heart_y = _health_bar_center_y - (_heart_scaled_h / 2) - (_original_pixel_shift_up * _heart_scale);
    draw_sprite_ext(_heart_spr, _heart_img, _heart_x, _heart_y, _heart_scale, _heart_scale, 0, c_white, 1);
}

// XP (Followers)
var _xp_barw = _barw * (xp / xp_require);
_dy += _barh + 8;

draw_sprite_stretched(spr_box, 0, _dx, _dy,_barw, _barh);
draw_sprite_stretched_ext(spr_box, 1, _dx, _dy, _xp_barw, _barh, c_lime, 0.6); 

draw_text(_dx + _barw / 2, _dy + _barh / 2, string(floor(total_xp)) + " XP");

if (sprite_exists(experience)) 
{
    var _xp_icon_spr = experience; 
    var _xp_icon_img = 0;            
    var _xp_icon_scale = 3.5;          


    var _xp_icon_original_w = sprite_get_width(_xp_icon_spr);
    var _xp_icon_original_h = sprite_get_height(_xp_icon_spr);

    var _xp_icon_scaled_h = _xp_icon_original_h * _xp_icon_scale;


    var _xp_icon_x = _dx + (_barw * 0.05);
    var _xp_bar_center_y = _dy + (_barh / 1.5);
    var _original_pixel_shift_up_xp = 3; 
    var _xp_icon_y = _xp_bar_center_y - (_xp_icon_scaled_h / 2) - (_original_pixel_shift_up_xp * _xp_icon_scale);
    draw_sprite_ext(_xp_icon_spr, _xp_icon_img, _xp_icon_x, _xp_icon_y, _xp_icon_scale, _xp_icon_scale, 0, c_white, 1);
}


var _health_percentage = (hp / hp_total) * 100;
if (_health_percentage <= 40) {

    var _alpha = clamp((40 - _health_percentage) / 70, 0, 0.5);
    

    draw_set_alpha(_alpha);
    draw_set_color(c_red);
    draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
    draw_set_alpha(1);
    draw_set_color(c_white);
}

// Handle level up notification
if (show_level_notification)
{
    // Update timer
    notification_timer--;
    if (notification_timer <= 0)
    {
        show_level_notification = false;
    }
    
    // Draw notification box 
    var box_width = 300;
    var box_height = 150;
    var padding = 15;
    var box_x = display_get_gui_width() - box_width - 20;
    var box_y = 20; 
    
    // Draw box background
    draw_set_color(make_color_rgb(33, 33, 33));
    draw_rectangle(box_x, box_y, box_x + box_width, box_y + box_height, false);
    
    // Draw level up text
    draw_set_font(Font1);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(c_lime); 
    var scale = 1.3;
    draw_text_transformed(box_x + padding, box_y + padding, "LEVEL UP! \nLEVEL " + string(level), scale, scale, 0);
    

    draw_set_font(Fontgameover);
    draw_set_color(c_white);
    var text_y = box_y + 80; 
    var health_increase = hp_total - last_health;
    var damage_increase = damage - last_damage;
    var scale = 2; 
    draw_text_transformed(box_x + padding, text_y, "HEALTH +" + string(health_increase), scale, scale, 0);
    draw_text_transformed(box_x + padding, text_y + 40, "DAMAGE +" + string(damage_increase), scale, scale, 0);

    // Reset drawing properties
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(c_white);
}

// Reset properties
draw_set_halign(fa_left);
draw_set_valign(fa_top);