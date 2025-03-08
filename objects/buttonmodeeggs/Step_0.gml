// Paso de evento Step
if (mouse_x > x  && mouse_x < x + sprite_width &&
    mouse_y > y  && mouse_y < y + sprite_height ) {
    sprite_index = buttonon; // Cambia a la imagen "buttonon"
} else {
    sprite_index = button; // Cambia a la imagen "button"
}
x = (room_width-sprite_width)*0.5;

if(global.edition = 0)
{
	edition = "Bedrock";
}
else
{
	edition = "Java";
}
if (window_get_height() > 1) {
room_height = window_get_height()/global.zoom
room_width = window_get_width()/global.zoom
surface_resize(application_surface,room_width,room_height);
}