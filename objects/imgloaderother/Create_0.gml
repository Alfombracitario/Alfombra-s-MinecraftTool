var texture = get_open_filename("Texture to tint(*.png)|*.png", "");
sprite_index = sprite_add(texture,0,0,0,0,0)
apply_size();
imgname =  "";

line = 0;

// Abrir archivo CSV
var f = get_open_filename("colors table (*.csv;*.txt)|*.csv;*.txt", "colors table.csv");
file = file_text_open_read(f)

save_folder = working_directory;

// Leer y omitir la primera línea (encabezado)
file_text_readln(file);

alarm_set(0,2);