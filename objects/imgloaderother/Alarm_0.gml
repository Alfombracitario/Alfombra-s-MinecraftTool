// Leer la siguiente línea
if (!file_text_eof(file)) {
line = file_text_readln(file);
values = string_split(line, ","); // array con los valores
}

image_blend = makecolorfromhex(values[0]);
alarm_set(1,1);
imgname = string(values[1])+".png";

alarm_set(0,2);