function save_image(fname) {
	draw_clear_alpha(c_black, 0);
    var screen_surf = surface_create(sprite_width, sprite_width);

    surface_set_target(screen_surf);

    draw_sprite_ext(spritei,0,0,0,1,1,0,image_blend,1);
	draw_sprite(sprite,0,0,0);
	
    surface_reset_target();

    surface_save(screen_surf,working_directory+"output/items/"+fname);
    surface_free(screen_surf);
	screen_surf = -1;
}