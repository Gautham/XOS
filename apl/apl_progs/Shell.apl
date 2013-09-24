decl
	integer i, j;
	string c, d, e;
enddecl

integer main() {
	print("Input >");
	read(c);
	while (c != "Exit") do
		i = Fork();
		if (i == -2) then
			j = Exec(c);
		else
			j = Wait(i);
		endif;
		print("Input >");
		read(c);
	endwhile;
	Exit();
	return 0;
}
