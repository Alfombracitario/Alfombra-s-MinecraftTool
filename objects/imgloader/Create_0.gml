var texture = get_open_filename("potion overlay (*.png)|*.png", "potion_overlay.png");
global.texturebasepotionoverlay = sprite_add(texture,0,0,0,0,0)

texture = get_open_filename("potion bottle empty (*.png)|*.png", "potion_bottle_empty.png");
global.texturepotion = sprite_add(texture,0,0,0,0,0);

texture = get_open_filename("potion splash empty (*.png)|*.png", "potion_splash_empty.png");
global.texturesplash = sprite_add(texture,0,0,0,0,0);

texture = get_open_filename("potion lingering empty  (*.png)|*.png", "potion_lingering_empty.png");
global.texturelingering = sprite_add(texture,0,0,0,0,0);

texture = get_open_filename("tipped arrow base (*.png|*.png", "tipped_arrow_base.png");
global.texturearrowbase = sprite_add(texture,0,0,0,0,0)

texture = get_open_filename("tipped arrow overlay  (*.png)|*.png", "tipped_arrow_overlay.png");
global.texturebasearrowhead = sprite_add(texture,0,0,0,0,0)

sprite = 0;

image = 4;

imgname =  "";

line = 0;

// Abrir archivo CSV
var f = get_open_filename("potions table files (*.csv;*.txt)|*.csv;*.txt", "potion table.csv");
file = file_text_open_read(f)

// Leer y omitir la primera línea (encabezado)
file_text_readln(file);

alarm_set(0,2);