function save_image(fname) {
	
    var screen_surf = surface_create(sprite_width, sprite_width);
	if (screen_surf != -1) { // Verificar que la surface se creó correctamente
    
	surface_set_target(screen_surf);
	show_debug_message("Surface created for "+fname);
	
	draw_clear_alpha(c_black, 0);
	
    draw_sprite_ext(spritei,0,0,0,1,1,0,image_blend,1);
	draw_sprite(sprite,0,0,0);
	
    surface_reset_target();

    surface_save(screen_surf,working_directory+"output/items/"+fname);
    surface_free(screen_surf);
	screen_surf = -1;
	draw_clear_alpha(c_black, 0);
	}
	else
	{
		show_debug_message("It seems like your computer can't make surfaces");
		show_debug_log(true);
	}
}