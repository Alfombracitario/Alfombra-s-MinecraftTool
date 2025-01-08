var text = "Start process";
draw_set_colour($383838);
draw_text(x+(2+sprite_width-string_width(text))*0.5,y+sprite_height*0.5-3,text);
draw_set_colour(c_white);
draw_text(x+(sprite_width-string_width(text))*0.5,y+sprite_height*0.5-4,text);