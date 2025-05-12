if (display_bridge_info) {

    var box_w = 260;
    var box_h = 100;
    var margin = 10;

    var gui_w = display_get_gui_width();
    var gui_h = display_get_gui_height();


    var x_pos = gui_w - box_w - margin;
    var y_pos = margin;


    draw_set_color(make_color_rgb(30,30,30));
    draw_rectangle(x_pos, y_pos, x_pos + box_w, y_pos + box_h, false);

    // Text settings
    draw_set_color(c_white);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);

    // Title

    draw_text(x_pos + 10, y_pos + 10, "Bridge");

    // Description
    draw_set_font(smalltxt);
    draw_text(x_pos + 10, y_pos + 35,
        "This bridge is unusually long,\nlegends say a cat has made this\nhis home and has been living on\nthis bridge for years.");
}