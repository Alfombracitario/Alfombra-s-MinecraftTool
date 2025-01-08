draw_set_font(global.fontmc);
draw_set_colour($383838);
draw_text(1, 1, string("Zoom: ") + string(global.zoom));
draw_text(1,room_height-7,"Version 1.0");
draw_set_colour(c_white);
draw_text(0, 0, string("Zoom: ") + string(global.zoom));
draw_text(0,room_height-8,"Version 1.0");