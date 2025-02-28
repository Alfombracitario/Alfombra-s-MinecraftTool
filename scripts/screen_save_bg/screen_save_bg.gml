/// screen_save_bg(surface, color)
/// surface: la surface a modificar.
/// color: el color que quieres hacer transparente.

function screen_save_bg(_surf, _color) {
    if (!surface_exists(_surf)) return;
    
    var w = surface_get_width(_surf);
    var h = surface_get_height(_surf);
    
    // Crear un sprite a partir de la surface
    var temp_sprite = sprite_create_from_surface(_surf, 0, 0, w, h, false, false, 0, 0);
    
    if (temp_sprite == -1) return;
    
    // Crear una nueva surface para modificar
    var new_surf = surface_create(w, h);
    surface_set_target(new_surf);
    draw_clear_alpha(c_white, 0); // Fondo transparente
    draw_sprite(temp_sprite, 0, 0, 0);
    surface_reset_target();
    
    // Liberar el sprite temporal
    sprite_delete(temp_sprite);
    
    // Guardar la imagen
    var filename = "saved_image.png";
    surface_save(new_surf, filename);
    
    // Liberar la surface temporal
    surface_free(new_surf);
    
    return filename; // Retorna el nombre del archivo guardado
}
