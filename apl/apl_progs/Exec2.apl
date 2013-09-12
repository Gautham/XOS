decl
	integer status;
enddecl

integer main() {
	status = Fork();
	if (status == -2) then
		status = Exec("1.xsm");
	else
		status = Exec("2.xsm");
	endif;
	
	return 0;
}
