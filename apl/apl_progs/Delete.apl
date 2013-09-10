decl
	integer status;
enddecl
integer main()
{
	status = Delete("file2.dat");
	print(status);
	return 0;
}
