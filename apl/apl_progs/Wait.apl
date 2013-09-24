decl
	integer i, j;
enddecl

integer main() {
	i = Fork();
	if (i == -2) then
		i = Fork();
		if (i == -2) then
			j = 1;
			while (j <= 5) do
				print(j);
				j = j + 1;
			endwhile;
			Exit();
		else
			i = Wait(i);
			j = 6;
			while (j <= 10) do
				print(j);
				j = j + 1;
			endwhile;
			i = Signal();
			while (j <= 20) do
				print(j);
				j = j + 2;
			endwhile;
			Exit();
		endif;
	else
		i = Wait(i);
		j = 12;
		while (j <= 20) do
			print(j);
			j = j + 2;
		endwhile;
		Exit();
	endif;
	return 0;
}
