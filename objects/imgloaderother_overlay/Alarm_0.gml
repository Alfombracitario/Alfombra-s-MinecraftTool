// Leer la siguiente línea
if (!file_text_eof(file)) {
line = file_text_readln(file);
values = string_split(line, ","); // array con los valores
}

image_blend = makecolorfromhex(values[0]);
alarm_set(1,1);
imgname = string(values[2])+".png";

color = makecolorfromhex(values[1]);

alarm_set(0,2);