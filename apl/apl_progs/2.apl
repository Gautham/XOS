decl
	integer i, n;
enddecl

integer main() {
	n = 25;
	i = 2;
	while (i <= n) do
		print(i);
		i = i + 3;
	endwhile;
	Exit();
	return 0;
}
