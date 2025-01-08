function process_tint(file)
{
    // Leer y omitir la primera línea (encabezado)
    file_text_readln(file);

    // Procesar las demás líneas
    while (!file_text_eof(file)) {
        // Leer la línea actual
        var line = file_text_readln(file);

        // Separar los valores por comas, cómo soy medio weón no supe cómo poner \n
        var values = string_split(line, ","); //array con cada valor

		//aquí va el código para renderizar
		//color
		image_blend = makecolorfromhex(values[0+global.moderncolors])
		//imágen
		room_height = sprite_height;
		room_width = sprite_width;
		image_index = global.texture[0]
		sprite = global.texturebase[0]
		
		//esto se debería ejecutar por frames separados solo por si acaso
		switch(image)
		{
			case 0:
			if(values[3] != "NULL"){
			save_image("potion_bottle_"+string(values[3])+".png")
			}break;
			
			case 1:
			if(values[4] != "NULL"){
			image_index = global.texture[1]
			save_image("potion_bottle_splash_"+string(values[4])+".png")
			}break;
			
			case 2:
			if(values[5] != "NULL"){
			image_index = global.texture[2]
			save_image("potion_bottle_lingering_"+string(values[5])+".png")
			}break;
		
			//flechas
			case 3:
			if(values[6] != "NULL"){
			sprite = global.texturebase[1];
			image_index = global.texture[3]
			save_image("tipped_arrow_"+string(values[6])+".png")
			}break;
		}
    }

    // Cerrar el archivo
    file_text_close(file);
}
