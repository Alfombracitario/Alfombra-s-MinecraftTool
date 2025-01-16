if (mouse_x > x  && mouse_x < x + sprite_width &&
    mouse_y > y  && mouse_y < y + sprite_height ) {
    image_index = 1+(global.grayscale[i]*2);
} else {
    image_index = 0+(global.grayscale[i]*2); // Cambia a la imagen "button"
}
x = (room_width-sprite_width)*0.5+16;