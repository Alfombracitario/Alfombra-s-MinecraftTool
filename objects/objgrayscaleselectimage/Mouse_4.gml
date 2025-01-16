if(y = 96)
{
var texture = get_open_filename("overlay texture (*.png)|*.png", "");
var _i = 0;
}
else
{
var texture = get_open_filename("base texture (*.png)|*.png", "");
var _i = 1;
}
global.texturebase[_i] = sprite_add(texture,0,0,0,0,0)
sprite_index = global.texturebase[_i]
image_xscale *= 32/sprite_height;
image_yscale = image_xscale;