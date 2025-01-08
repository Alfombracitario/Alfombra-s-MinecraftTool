function makecolorfromhex(color)
{
show_debug_message("input = "+color)
//convertir hexadecimal a decimal
var ch1 = string_char_at(color,1);
var ch2 = string_char_at(color,2);
var r = ch1+ch2;
show_debug_message("R=\nCh1 = "+ch1+"\nCh2 = "+ch2+"\nResult = "+r)
ch1 = string_char_at(color,3);
ch2 = string_char_at(color,4);
var g = ch1+ch2;
show_debug_message("G=\nCh1 = "+ch1+"\nCh2 = "+ch2+"\nResult = "+g)
ch1 = string_char_at(color,5);
ch2 = string_char_at(color,6);
var b = ch1+ch2;
show_debug_message("B=\nCh1 = "+ch1+"\nCh2 = "+ch2+"\nResult = "+b)

var red = hex_to_dec(r)
var green = hex_to_dec(g)
var blue = hex_to_dec(b)
show_debug_message("Red = "+string(red));
show_debug_message("Green = "+string(green));
show_debug_message("Blue = "+string(blue));
var result = make_color_rgb(red,green,blue);

show_debug_message("output = "+string(result))
return result;
}