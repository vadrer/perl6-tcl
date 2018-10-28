use Tcl;

Tcl_FindExecutable("jddke");
my $interp = Tcl_CreateInterp();
say "c. interp=$interp";
Tcl_Eval($interp,'for {set i 0} {$i<10} {incr i} {puts "this:$i"}');
say 'setvar:',Tcl_SetVar($interp,"a","this",0);
say 'getvar:',Tcl_GetVar($interp,"a",0);
