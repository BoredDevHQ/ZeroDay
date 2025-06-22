var _boxw = 800;
var _boxh = gui_h * 0.3; 
var _dx = (gui_w - _boxw) / 2;
var _dy = gui_h - _boxh - 20; 
var _padding = 16;

draw_sprite_stretched(spr_box, 0, _dx, _dy, _boxw, _boxh);

var _text_x = _dx + _padding;
var _text_y = _dy + _padding;

draw_set_font(Font1);

var _name = messages[current_message].name;
draw_set_color(global.char_colors[$ _name]);
draw_text(_text_x, _text_y, _name);
draw_set_color(c_white)

_text_y += 40;

var _wrap_w = _boxw - (_padding * 2);
draw_text_ext(_text_x, _text_y, draw_message, -1, _wrap_w);

// Draw skip button
// Position skip button inside the dialog box
var _skip_x = _dx + _boxw - skip_btn_w - _padding;
var _skip_y = _dy + _boxh - skip_btn_h - _padding;

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
