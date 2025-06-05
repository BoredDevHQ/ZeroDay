var _dx = 0;
var _dy = gui_h * 0.7;
var _boxw = gui_w;
var _boxh = gui_h - _dy;

draw_sprite_stretched(spr_box, 0, _dx, _dy, _boxw, _boxh);

_dx += 16;
_dy += 16;

draw_set_font(Font1);

var _name = messages[current_message].name;
draw_set_color(global.char_colors[$ _name]);
draw_text(_dx, _dy, _name);
draw_set_color(c_white)

_dy += 40;

draw_text_ext(_dx, _dy, draw_message, -1, _boxw - _dx * 2);

// Draw skip button
var _skip_x = gui_w - skip_btn_w - skip_btn_margin;
var _skip_y = gui_h - skip_btn_h - skip_btn_margin;

// Update hover state
var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);
skip_btn_hover = point_in_rectangle(_mx, _my, _skip_x, _skip_y, _skip_x + skip_btn_w, _skip_y + skip_btn_h);

// Draw button background
draw_set_color(skip_btn_hover ? c_gray : c_dkgray);
draw_rectangle(_skip_x, _skip_y, _skip_x + skip_btn_w, _skip_y + skip_btn_h, false);
draw_set_color(c_white);

// Draw button text
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(_skip_x + skip_btn_w/2, _skip_y + skip_btn_h/2, "Skip");
draw_set_halign(fa_left);
draw_set_valign(fa_top);
