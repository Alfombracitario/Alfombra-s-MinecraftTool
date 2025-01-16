if(text2 = "Enabled")
{
	switch(global.grayscaletype)
	{
	case 0:
	shader_set(grayscale)
	break;
	
	case 1:
	shader_set(grayscale_2)
	break;
	
	case 2:
	shader_set(grayscale_3)
	break;
	}
	draw_self();
	shader_reset();
}
else
{
	draw_self();	
}