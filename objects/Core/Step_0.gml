if (window_get_height() > 1) {
room_height = window_get_height()/global.zoom
room_width = window_get_width()/global.zoom
surface_resize(application_surface,room_width,room_height);
}