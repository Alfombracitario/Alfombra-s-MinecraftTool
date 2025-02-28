switch (image) {
            case 0:
                if (values[3] != "NULL") 
				{
			        image_blend = makecolorfromhex(values[0 + global.moderncolors]);
					sprite_index = global.texturebasepotionoverlay;
					sprite = global.texturepotion;
					apply_size();
					alarm_set(1,1);
					if(values[3] != "NO_SUFFIX"){
						imgname = "potion_bottle_" + string(values[3]) + ".png";
						}
					else{
					imgname = "potion_bottle.png";
					}	
				}
                break;

            case 1:
                if (values[4] != "NULL")
				{
					image_blend = makecolorfromhex(values[0 + global.moderncolors]);
					sprite_index = global.texturebasepotionoverlay;
                    sprite = global.texturesplash;
					apply_size();
					alarm_set(1,1);
					if (values[4] != "NO_SUFFIX")
					{
						imgname = "potion_bottle_splash_" + string(values[4]) + ".png";
					}
					else
					{
						imgname = "potion_bottle_splash.png";
					}
                }
                break;

            case 2:
                if (values[5] != "NULL") {
					image_blend = makecolorfromhex(values[0 + global.moderncolors]);
					sprite_index = global.texturebasepotionoverlay;
                    sprite = global.texturelingering;
					apply_size();
					alarm_set(1,1);
					if (values[5] != "NO_SUFFIX")
					{
						imgname = "potion_bottle_lingering_" + string(values[5]) + ".png";
					}
					else
					{
						imgname = "potion_bottle_lingering.png";
					}
                }
                break;

            // flechas
            case 3:
                if (values[6] != "NULL") {
					image_blend = makecolorfromhex(values[0 + global.moderncolors]);
                    sprite_index = global.texturebasearrowhead;
                    sprite = global.texturearrowbase;
					apply_size();
					alarm_set(1,1);
					if (values[6] != "NO_SUFFIX")
					{
						imgname = "tipped_arrow_" + string(values[6]) + ".png";
					}
					else
					{
						imgname = "tipped_arrow.png";
					}
                }
                break;
            
			case 4:
        if (!file_text_eof(file)) {
            line = file_text_readln(file);
            values = string_split(line, ","); // array con los valores
			} else {
				file_text_close(file); // Cierra el archivo al finalizar
				alarm_set(2, 1); // Llama a la alarma 2 porque ya no hay líneas
				exit; // Detiene la ejecución para evitar incrementar 'image' y volver a entrar en el switch
        }
        image = -1;
        break;
}
image++;
alarm_set(0,2);
x = -sprite_width
spritei = sprite_index;