decl
	integer i, n, status;
enddecl

integer main() {
	n = 15;
	i = 1;
	status = Fork();
	print("Fork Stat");	
	print(status);
	while (i <= n) do		
		print(i);
		if (status == -2) then
			i = i + 3;
		else
			i = i + 2;
		endif;
	endwhile;
	return 0;
}
