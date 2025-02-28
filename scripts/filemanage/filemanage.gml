function filemanage(val,val1,val2)
{
			if(val1 == "mode" && val2 == "0")
			{
				mode = "0";	
			}
			else
			{
		switch(val)
		{
			case "mode":
				mode = val1;
			break;
			case "copy":
				if(val2 != "\n")
				{
					copy(val1,val2);
				}
				else
				{
					copy(val1,val1);
				}
			break;
			
			case "inpf":
				if(val1 = "wd")
				{
				inpf = working_directory+val2;
				}
				else
				{
					inpf = val1+val2;
				}
			break;
			
			case "outf":
				if(val1 = "wd")
				{
				outf = working_directory+val2;
				}
				else
				{
					outf = val1+val2;
				}
			break;
			
			case "dele":
				if(val1 == "i")
				{
					file_delete(inpf+val2);
				}
				if(val1 == "o")
				{
					file_delete(outf+val2);
				}
			break;
			
			case "genm":
			break;
			
			case "head":
			break;
			
			case "apng":
			break;
			
			case "atga":
			break;
			
			case "pnga":
			break;
			
			case "pnge":
			break;
			
		}
	}
}