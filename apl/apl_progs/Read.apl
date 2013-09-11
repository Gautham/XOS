decl
	integer status,d;
	string p;
enddecl
integer main()
{
	d = Open("file2.dat");
	print(d);
	status = Read(d, p);
	if (status != -1) then
		print(p);	
	endif;
	status = Read(d, p);
	if (status != -1) then
		print(p);	
	endif;
	status = Read(d, p);
	if (status != -1) then
		print(p);	
	endif;
	status = Read(d, p);
	if (status != -1) then
		print(p);	
	endif;
	status = Close(d);	
	return 0;
}
