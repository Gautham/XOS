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

			//	Rename File
			if (c == "mv" || c == "Mv") then
				print("Filename?");
				read(d);
				i = Open(d);
				if (i == -1) then
					print("Not Found");
				else
					print("New Name?");
					read(e);
					k = Open(e);
					if (k != -1) then
						print("File Exists!");
					else
						k = Create(e);
						if (k == -1) then
							print("Failed!");
						else
							k = Open(e);
							j = Read(i, e);
							while (j != -1) do
								j = Write(k, e);
								j = Read(i, e);
							endwhile;
							k = Close(k);
							i = Close(i);
							i = Delete(d);
							print("Renamed");
						endif;
					endif;
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
