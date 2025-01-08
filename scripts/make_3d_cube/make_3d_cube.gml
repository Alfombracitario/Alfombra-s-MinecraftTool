function make_3d_cube()
{
vertex_begin(vbuff2,format);
//Arriba TERMINADO
vertex_position_3d(vbuff2,10,27,0);
vertex_color(vbuff2,c_white,1);
vertex_texcoord(vbuff2,0,0);
vertex_position_3d(vbuff2,52,6,0);
vertex_color(vbuff2,c_white,1);
vertex_texcoord(vbuff2,1,0);
vertex_position_3d(vbuff2,94,27,0);
vertex_color(vbuff2,c_white,1);
vertex_texcoord(vbuff2,1,1);
//Arriba 2 TERMINADO

vertex_position_3d(vbuff2,10,27,0);
vertex_color(vbuff2,c_white,1);
vertex_texcoord(vbuff2,0,0);
vertex_position_3d(vbuff2,52,48,0);
vertex_color(vbuff2,c_white,1);
vertex_texcoord(vbuff2,0,1);
vertex_position_3d(vbuff2,94,27,0);
vertex_color(vbuff2,c_white,1);
vertex_texcoord(vbuff2,1,1);

vertex_end(vbuff2);


vertex_begin(vbuff,format);
//Izquierda
vertex_position_3d(vbuff,10,27,0);
vertex_color(vbuff,$bababa,1);
vertex_texcoord(vbuff,0,0);
vertex_position_3d(vbuff,10,78,0);
vertex_color(vbuff,$bababa,1);
vertex_texcoord(vbuff,0,1);
vertex_position_3d(vbuff,52,99,0);
vertex_color(vbuff,$bababa,1);
vertex_texcoord(vbuff,1,1);
//Izqueirda 2
vertex_position_3d(vbuff,10,27,0);
vertex_color(vbuff,$bababa,1);
vertex_texcoord(vbuff,0,0);
vertex_position_3d(vbuff,52,48,0);
vertex_color(vbuff,$bababa,1);
vertex_texcoord(vbuff,1,0);
vertex_position_3d(vbuff,52,99,0);
vertex_color(vbuff,$bababa,1);
vertex_texcoord(vbuff,1,1);

vertex_end(vbuff);


vertex_begin(vbuff3,format);
//Derecha
vertex_position_3d(vbuff3,52,48,0);
vertex_color(vbuff3,$7f7f7f,1);
vertex_texcoord(vbuff3,0,0);
vertex_position_3d(vbuff3,52,99,0);
vertex_color(vbuff3,$7f7f7f,1);
vertex_texcoord(vbuff3,0,1);
vertex_position_3d(vbuff3,94,27,0);
vertex_color(vbuff3,$7f7f7f,1);
vertex_texcoord(vbuff3,1,0);

vertex_position_3d(vbuff3,94,78,0);
vertex_color(vbuff3,$7f7f7f,1);
vertex_texcoord(vbuff3,1,1);
vertex_position_3d(vbuff3,52,99,0);
vertex_color(vbuff3,$7f7f7f,1);
vertex_texcoord(vbuff3,0,1);
vertex_position_3d(vbuff3,94,27,0);
vertex_color(vbuff3,$7f7f7f,1);
vertex_texcoord(vbuff3,1,0);

vertex_end(vbuff3);
}