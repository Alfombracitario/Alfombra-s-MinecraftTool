varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    // Obtener el color del fragmento actual
    vec4 color = texture2D(gm_BaseTexture, v_vTexcoord);

    // Intercambiar el canal rojo con el azul
    gl_FragColor = vec4(color.r, color.r, color.r, color.a) * v_vColour;
}

//este shader ni sé si sirve o no a este punto, lo hice hace mucho para probar algo