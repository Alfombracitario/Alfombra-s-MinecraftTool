function copy(input,output)
{
	if(file_exists(inpf+input))
	{
	file_copy(inpf+input,outf+output);
	}
}