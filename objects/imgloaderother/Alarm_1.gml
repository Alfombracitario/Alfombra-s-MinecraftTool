// Crear una superficie con el tamaño de la pantalla
var screen_surf = surface_create(sprite_width, sprite_width);


surface_set_target(screen_surf);

// Dibujar todo lo que se ve en la pantalla (el contenido actual)
draw_self();  // Dibujar la instancia actual

surface_reset_target();

surface_save(screen_surf,save_folder + "other/" + imgname);

surface_free(screen_surf);