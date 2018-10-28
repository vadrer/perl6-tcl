use v6;
unit module Tcl;

use NativeCall;

# yet much more to implement;

# basic functions
our sub Tcl_FindExecutable(Str) is native('tcl86t') is export { * }
our sub Tcl_CreateInterp() returns Pointer[void] is native('tcl86t') is export { * }
our sub Tcl_Init() returns int32 is native('tcl86t') is export { * }
our sub Tcl_Eval(Pointer[void],Str) returns int32 is native('tcl86t') is export { * }

# const char * Tcl_SetVar(interp, varName, newValue, flags)
our sub Tcl_SetVar(Pointer[void],Str,Str,uint32) returns Str is native('tcl86t') is export { * }
# const char * Tcl_SetVar2(interp, name1, name2, newValue, flags)
# Tcl_Obj * Tcl_ObjSetVar2(interp, part1Ptr, part2Ptr, newValuePtr, flags)
# Tcl_Obj * Tcl_GetVar2Ex(interp, name1, name2, flags)
# const char * Tcl_GetVar(interp, varName, flags)
our sub Tcl_GetVar(Pointer[void],Str,uint32) returns Str is native('tcl86t') is export { * }
# const char * Tcl_GetVar2(interp, name1, name2, flags)

