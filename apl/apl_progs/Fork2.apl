decl
	integer i, n, status, pid, p;
enddecl

integer main() {
	n = 100;
	status = Create("file.dat");
	p = Open("file.dat");
	pid = Fork();
	if (pid == -2) then
		i = 1;
	else
		i = 2;
	endif;
	while (i <= n) do
		if (pid == -2 && i > 50) then
			pid = -3;
			status = Close(p);
		else
			status = Write(p, i);	
		endif;	
		i = i + 2;
	endwhile;
	return 0;
}
