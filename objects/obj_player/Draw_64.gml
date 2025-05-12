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

draw_text(_dx + _barw / 2, _dy + _barh / 2, "HP");

// XP
var _xp_barw = _barw * (xp / xp_require);
_dy += _barh + 8;

draw_sprite_stretched(spr_box, 0, _dx, _dy,_barw, _barh);
draw_sprite_stretched_ext(spr_box, 1, _dx, _dy, _xp_barw, _barh, c_blue, 0.6);

draw_text(_dx + _barw / 2, _dy + _barh / 2, $"LEVEL {level}");

// Low health red overlay effect
var _health_percentage = (hp / hp_total) * 100;
if (_health_percentage <= 40) {
    // Calculate alpha based on health percentage
    // At 40% health, alpha will be near 0
    // At 5% health, alpha will be 0.5 (50%)
    var _alpha = clamp((40 - _health_percentage) / 70, 0, 0.5);
    
    // Draw red rectangle over the entire screen
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
    
    // Draw notification box (2x larger)
    var box_x = 20;
    var box_y = display_get_gui_height() - 170; // Adjusted for larger size
    var box_width = 300; // 2x wider
    var box_height = 150; // 2x taller
    var padding = 15; // 2x padding
    
    // Draw box background
    draw_set_color(make_color_rgb(33, 33, 33));
    draw_rectangle(box_x, box_y, box_x + box_width, box_y + box_height, false);
    
    // Draw title with blue color
    draw_set_font(Font1);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(c_aqua); // Blue color for level text
    var scale = 2; // Scale up the text
    draw_text_transformed(box_x + padding, box_y + padding, "LEVEL " + string(level), scale, scale, 0);
    
    // Draw stats with smaller font in white
    draw_set_font(Fontgameover);
    draw_set_color(c_white);
    var text_y = box_y + 80; // Adjusted for larger size
    draw_text_transformed(box_x + padding, text_y, "HEALTH = " + string(hp_total), scale, scale, 0);
    draw_text_transformed(box_x + padding, text_y + 40, "DAMAGE = " + string(damage), scale, scale, 0);
    
    // Reset drawing properties
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(c_white);
}

// Reset properties
draw_set_halign(fa_left);
draw_set_valign(fa_top);