function save_image(fname) {
    // Crear una superficie con el tamaño de la pantalla
    var screen_surf = surface_create(sprite_width, sprite_width);

    // Establecer la superficie como el target de dibujo
    surface_set_target(screen_surf);

    // Dibujar todo lo que se ve en la pantalla (el contenido actual)
    draw_self();  // Dibujar la instancia actual
	draw_sprite(sprite,0,x,y);

    // Restaurar el target de dibujo al backbuffer (pantalla)
    surface_reset_target();

    // Guardar la superficie como un archivo .png
    surface_save(screen_surf,program_directory+"items/"+fname);
    // Limpiar la superficie cuando ya no la necesites
    surface_free(screen_surf);

}