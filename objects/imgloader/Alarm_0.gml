switch (image) {
            case 0:
                if (values[3] != "NULL") 
				{
			        image_blend = makecolorfromhex(values[0 + global.moderncolors]);
					sprite_index = global.texturebase[0];
					sprite = global.texture[0];
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
					sprite_index = global.texturebase[0];
                    sprite = global.texture[1];
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
					sprite_index = global.texturebase[0];
                    sprite = global.texture[2];
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
                    sprite_index = global.texturebase[1];
                    sprite = global.texture[3];
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
                // Leer la siguiente línea
                if (!file_text_eof(file)) {
                    line = file_text_readln(file);
                    values = string_split(line, ","); // array con los valores
                }
                image = -1;
                break;
}
image++;
alarm_set(0,2);