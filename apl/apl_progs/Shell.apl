decl
	integer i, j;
	string c, d, e;
enddecl

integer main() {
	print("Input >");
	read(c);
	while (c != "Exit" && c != "exit") do
		if (c == "cat" || c == "Cat") then
			print("Filename?");
			read(d);
			i = Open(d);
			if (i == -1) then
				print("Not Found");
			else
				j = Read(i, e);
				while (j != -1) do
					print(e);
					j = Read(i, e);
					while (j != -1 && e == "") do
						j = Read(i, e);
					endwhile;
				endwhile;
				j = Close(i);
				print("EOF");
			endif;
		else if (c == "rm" || c == "Rm") then
			print("Filename?");
			read(d);
			i = Delete(d);
			if (i == -1) then
				print("Delete Failed");
			else
				print("Deleted!");
			endif;
		else
			i = Fork();
			if (i == -2) then
				j = Exec(c);
			else
				j = Wait(i);
			endif;		
		endif;
		endif;
		print("Input >");
		read(c);
	endwhile;
	Exit();
	return 0;
}
