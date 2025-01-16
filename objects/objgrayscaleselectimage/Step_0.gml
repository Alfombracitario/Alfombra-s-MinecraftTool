if (mouse_x > x  && mouse_x < x + sprite_width &&
    mouse_y > y  && mouse_y < y + sprite_height ) {
    image_blend = c_yellow; // Cambia a la imagen "buttonon"
} else {
    image_blend = c_white; // Cambia a la imagen "button"
}
x = (room_width-sprite_width)*0.5-64;
text2 = ((global.grayscale[i] == 0) ? "Disabled" : "Enabled");