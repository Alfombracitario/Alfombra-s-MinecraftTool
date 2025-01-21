if(mouse_y < room_height*0.5)
{
	var file_top = get_open_filename("Imágenes\*.png", "top.png");

	if (file_top != "") {// Verificar si el archivo fue seleccionado
	   gtop = sprite_add(file_top, 1,0,0,0,0); // Cargar imagen seleccionada
	   if (gtop == -1) {
	        // Si la imagen no se pudo cargar, cargar imagen interna
        gtop = top;
	    }
	} else {
	    // Si no se seleccionó ninguna imagen, cargar imagen interna
	    gtop = top;
	}
}
else
{
if(mouse_x < room_width*0.5)
{
	var file_side = get_open_filename("Imágenes\*.png", "side.png'");

	// Verificar si el archivo fue seleccionado
	if (file_side != "") {
	    gside = sprite_add(file_side, 1,0,0,0,0); // Cargar imagen seleccionada
	    if (gside == -1) {
	        // Si la imagen no se pudo cargar, cargar imagen interna
	        gside = side
	    }
	} else {
	    // Si no se seleccionó ninguna imagen, cargar imagen interna
	    gside = side;
	}
}
else
{
	var file_side2 = get_open_filename("Imágenes\*.png", "side.png'");

	// Verificar si el archivo fue seleccionado	
	if (file_side2 != "") {
	    gside2 = sprite_add(file_side2, 1,0,0,0,0); // Cargar imagen seleccionada
		if (gside2 == -1) {
			// Si la imagen no se pudo cargar, cargar imagen interna
			gside2 = side
		}
	} else {
	 // Si no se seleccionó ninguna imagen, cargar imagen interna
		gside2 = side;
	}

}
}