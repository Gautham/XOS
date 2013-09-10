decl
	integer status;
enddecl
integer main()
{
	status = Open("file2.dat");
	print(status);
	status = Close(status);
	print(status);
	status = Delete("file2.dat");
	print(status);
	return 0;
}
