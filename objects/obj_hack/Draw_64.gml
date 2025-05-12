// Draw the hacking progress bar if hacking is in progress
if (is_hacking)
{

    
    var bar_width = display_get_gui_width() * 0.8;
    var bar_height = 20;
    var bar_x = (display_get_gui_width() - bar_width) / 2;
    var bar_y = display_get_gui_height() - bar_height - 20;
    
    // Draw background bar
    draw_set_color(make_color_rgb(33, 33, 33));
    draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, false);
    
    // Draw progress (red fill)
    var progress = hack_progress / hack_duration;
    draw_set_color(c_red);
    draw_rectangle(bar_x + 2, bar_y + 2, bar_x + (bar_width - 2) * progress, bar_y + bar_height - 2, false);
    
    // Draw border
    draw_set_color(c_white);
    draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, true);
}
