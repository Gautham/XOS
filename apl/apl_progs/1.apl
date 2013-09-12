decl
	integer i, n;
enddecl

integer main() {
	n = 15;
	i = 1;
	while (i <= n) do
		print(i);
		i = i + 3;
	endwhile;
	Exit();
	return 0;
}
