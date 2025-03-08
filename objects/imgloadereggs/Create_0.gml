if(global.edition == 0)//bedrock
{
var basename = "spawn_egg.png";
var overlayname = "spawn_egg_overlay.png";
}
else
{
var basename = "spawn_egg.png";
var overlayname = "spawn_egg_overlay.png";
}
var texture = get_open_filename("Base texture (*.png)|*.png", basename);
sprite_index = sprite_add(texture,0,0,0,0,0)

var texture = get_open_filename("overlay texture (*.png)|*.png", overlayname);
sprite = sprite_add(texture,0,0,0,0,0)

apply_size();
imgname =  "";

line = 0;

// Abrir archivo CSV
var f = get_open_filename("colors table (*.csv;*.txt)|*.csv;*.txt", "egg.csv");
file = file_text_open_read(f)

save_folder = working_directory;

// Leer y omitir la primera línea (encabezado)
file_text_readln(file);

alarm_set(0,2);