var file;
file = get_save_filename("Rendered image|*.png", "");
if (file != "")
{
    // Crear una superficie con el tamaño de la pantalla
	var sph = sprite_get_height(global.texturebase[0])
	var spw = sprite_get_width(global.texturebase[0])
    var screen_surf = surface_create(spw, sph);

    // Establecer la superficie como el target de dibujo
    surface_set_target(screen_surf);

    // Limpiar la superficie con un color transparente
    draw_clear_alpha(c_black, 0);

    // Iterar a través de las imágenes
    for (var i = array_length(global.texturebase) - 1; i >= 0; i--) {
        if (global.grayscale[i] == 1) {
            // Aplicar el shader de escala de grises según el tipo
            switch (global.grayscaletype) {
                case 0:
                    shader_set(grayscale);
                    break;
                case 1:
                    shader_set(grayscale_2);
                    break;
                case 2:
                    shader_set(grayscale_3);
                    break;
            }
            // Dibujar la imagen con el shader
            draw_sprite(global.texturebase[i], 0, 0, 0);
            shader_reset(); // Restablecer el shader después de dibujar
        } else {
            draw_sprite_ext(global.texturebase[i], 0, 0, 0, 1, 1, 0, c_white, 0.5);
        }
    }

    // Restaurar el target de dibujo al backbuffer (pantalla)
    surface_reset_target();

    surface_save(screen_surf,file);

    // Liberar la superficie
    surface_free(screen_surf);
}