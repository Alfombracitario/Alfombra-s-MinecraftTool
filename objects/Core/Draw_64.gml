draw_set_font(global.fontmc);
draw_set_colour($383838);
draw_text(1, 1, string("Zoom: ") + string(global.zoom));
draw_text(1,room_height-7,"Version 1.3");
draw_set_colour(c_white);
draw_text(0, 0, string("Zoom: ") + string(global.zoom));
draw_text(0,room_height-8,"Version 1.3");

draw_set_halign(fa_right);
draw_set_colour($383838);
draw_text(room_width,room_height-7,"Tool by Alfombra de madera, thanks AgentMindStrom! ");
draw_set_colour(c_white);
draw_text(room_width-1,room_height-8,"Tool by Alfombra de madera, thanks AgentMindStrom! ");
draw_set_halign(fa_left);