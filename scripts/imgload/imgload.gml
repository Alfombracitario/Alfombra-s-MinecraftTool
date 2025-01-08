function imgload()
{
// En el evento Key Press "Enter"
var file = get_open_filename("Imagenes\*.png\*.jpg\*.bmp", "Seleccionar Imagen");

// Si el jugador selecciona un archivo
if (file != "") {
    // Cargar la imagen como un sprite y asignarlo al objeto
    var new_sprite = sprite_add(file, 1, false, false, 0, 0);
    
    if (new_sprite != -1) {
        // Asignar el sprite al objeto
        sprite_index = new_sprite;

        // Cambiar el tamaño de la habitación al tamaño del sprite
        room_width = sprite_width;
        room_height = sprite_height;

        // Cambiar la resolución del juego al tamaño del sprite
        display_set_gui_size(sprite_width, sprite_height);
        window_set_size(sprite_width*global.zoom, sprite_height*global.zoom);
		surface_resize(application_surface,room_width,room_height);
    } else {
        show_message("No se pudo cargar la imagen.");
    }
}
}