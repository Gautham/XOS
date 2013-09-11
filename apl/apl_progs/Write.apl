decl
	integer status,d, i;
enddecl
integer main()
{
	d = Open("file2.dat");
	print(d);
	i = 0;
	while (i < 1001) do
		status = Write(d, i);
		i = i + 1;
	endwhile;
	status = Close(d);
	print(status);
	return 0;
}
