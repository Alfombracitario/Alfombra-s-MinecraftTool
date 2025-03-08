// Crear una superficie con el tamaño de la pantalla
var screen_surf = surface_create(sprite_width, sprite_width);


surface_set_target(screen_surf);

draw_clear_alpha(c_black,0);

// Dibujar todo lo que se ve en la pantalla (el contenido actual)
draw_self();  // Dibujar la instancia actual

draw_sprite_ext(sprite,0,x,y,1,1,0,color,1);

surface_reset_target();
if global.edition == 0 surface_save(screen_surf,save_folder + "output/items/spawn_eggs/" + imgname); //bedrock
if global.edition == 1 surface_save(screen_surf,save_folder + "output/assets/minecraft/textures/item/" + imgname); //java

surface_free(screen_surf);