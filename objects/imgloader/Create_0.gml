var texture = get_open_filename("Potion base (overlay) (*.png)|*.png", "potion_overlay");
global.texturebase[0] = sprite_add(texture,0,0,0,0,0)

texture = get_open_filename("Normal potion bottle (*.png)|*.png", "potion_bottle_empty");
global.texture[0] = sprite_add(texture,0,0,0,0,0);

texture = get_open_filename("Splash potion bottle(*.png)|*.png", "potion_bottle_splash_empty");
global.texture[1] = sprite_add(texture,0,0,0,0,0);

texture = get_open_filename("Lingering (*.png)|*.png", "potion_bottle_lingering_empty");
global.texture[2] = sprite_add(texture,0,0,0,0,0);

texture = get_open_filename("Arrow base(*.png|*.png", "tipped_arrow_base");
global.texture[3] = sprite_add(texture,0,0,0,0,0)

texture = get_open_filename("Arrow head (overlay) (*.png)|*.png", "tipped_arrow");
global.texturebase[1] = sprite_add(texture,0,0,0,0,0)

sprite = 0;

image = 4;

imgname =  "";

line = 0;

// Abrir archivo CSV
var f = get_open_filename("potions table csv file (*.csv)|*.csv", "potion table.csv");
file = file_text_open_read(f)

// Leer y omitir la primera línea (encabezado)
file_text_readln(file);

alarm_set(0,2);
