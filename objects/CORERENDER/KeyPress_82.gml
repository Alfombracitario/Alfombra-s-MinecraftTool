res = get_integer("Set image resolution: ", 512);
surface_resize(application_surface, res, res);
if (res > 128) {
    window_set_size(res, res);
} else {
    var num = ceil(128 / res);
    window_set_size(res * num, res * num);
}
