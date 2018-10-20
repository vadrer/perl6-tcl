use v6;
unit module Tcl;

use NativeCall;

# basic functions
our sub tclInit() returns Str is encoded('ascii') is native('tcl86.dll') is export { * }
