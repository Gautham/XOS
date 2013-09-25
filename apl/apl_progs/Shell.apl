decl
	integer i, j, k, f;
	string c, d, e;
enddecl

integer main() {
	print("Input >");
	read(c);
	while (c != "Exit" && c != "exit") do

		i = Open(c);
		if (i == 0) then
			i = Fork();
			if (i == -2) then
				j = Exec(c);
			else
				j = Wait(i);
			endif;
		else
			f = 0;

			//	List File Contents
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
				f = 1;
			endif; 

			//	Delete File	
			if (c == "rm" || c == "Rm") then
				print("Filename?");
				read(d);
				i = Delete(d);
				if (i == -1) then
					print("Delete Failed");
				else
					print("Deleted!");
				endif;
				f = 1;
			endif;

		endif;
		if (f == 0) then
			print("Invalid!");
		endif;
		print("Input >");
		read(c);
	endwhile;
	Exit();
	return 0;
}
