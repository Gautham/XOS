decl
	integer status;
enddecl
integer main()
{
	status = Create("file2.dat");
	print(status);
	return 0;
}
