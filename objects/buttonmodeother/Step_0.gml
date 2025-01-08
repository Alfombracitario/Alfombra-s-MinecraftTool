// Paso de evento Step
if (mouse_x > x  && mouse_x < x + sprite_width &&
    mouse_y > y  && mouse_y < y + sprite_height ) {
    sprite_index = buttonon; // Cambia a la imagen "buttonon"
} else {
    sprite_index = button; // Cambia a la imagen "button"
}
x = (room_width-sprite_width)*0.5;