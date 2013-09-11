decl
	integer status,d, i;
enddecl
integer main()
{
	d = Open("file2.dat");
	print(d);
	status = Write(d, 1);
	status = Write(d, 2);
	status = Write(d, 3);
	status = Seek(d, 1);
	print(status);
	status = Write(d, 4);
	print(status);
	status = Close(d);	
	return 0;
}
