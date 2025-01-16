varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    // Obtener el color del fragmento actual
    vec4 color = texture2D(gm_BaseTexture, v_vTexcoord);

    gl_FragColor = vec4(color.b, color.b, color.b, color.a) * v_vColour;
}