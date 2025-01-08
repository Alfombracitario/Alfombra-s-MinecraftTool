gside = side;
gside2 = side;
gtop = top;
res = 512;

vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_color();
vertex_format_add_texcoord();
format = vertex_format_end();
vbuff = vertex_create_buffer();
vbuff2 = vertex_create_buffer();
vbuff3 = vertex_create_buffer();

make_3d_cube();

room_height = 104
room_width = 104
surface_resize(application_surface,res,res);
window_set_size(res,res)