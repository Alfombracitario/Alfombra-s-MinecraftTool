var f = get_open_filename("files managment file (*.csv;*.txt)|*.csv;*.txt", "file name.csv");
file = file_text_open_read(f);
// Leer y omitir la primera línea (encabezado)
file_text_readln(file);

mode = "0";
while (!file_text_eof(file)) {

	line = file_text_readln(file);
	values = string_split(line, ","); // array con los valores
 // Rellenar el array con "" si faltan valores
    if (array_length(values) < 3) {
        while (array_length(values) < 3) {
            array_push(values, ""); // Añadir "" hasta que tenga 3 elementos
        }
    }
	
	show_debug_message("1 = "+values[0]);
	show_debug_message("2 = "+values[1]);
	show_debug_message("3 = "+values[2]);
		
	if(mode == "0")
	{
		filemanage(values[0],values[1],values[2]);
	}
	else
	{
		filemanage(mode,values[0],values[1])
	}
}
file_text_close(file);
game_end();
