// Leer la siguiente línea
if (!file_text_eof(file)) {
line = file_text_readln(file);
values = string_split(line, ","); // array con los valores
}
else
{
	game_end();
}
image_blend = makecolorfromhex(values[0]);
alarm_set(1,1);
if global.edition == 0 imgname = "spawn_egg_"+string(values[2])+".png";
if global.edition == 1 imgname = string(values[2])+"_spawn_egg.png";

color = makecolorfromhex(values[1]);

alarm_set(0,2);