REM GREP
@echo off

IF "%1" == "" (
	 SET ELEVEL=G1
	 sbf_wrapper.bat ERROR %ELEVEL%
)

IF "%2" == "" (
	 SET ELEVEL=G2
	 sbf_wrapper.bat ERROR %ELEVEL%
)

FIND /I "%1" %2
IF "%3" NEQ "" (
	 IF EXIST %3 FIND /I "%1" %3
)
IF "%4" NEQ "" (
	 IF EXIST %4 FIND /I "%1" %4
)
IF "%5" NEQ "" (
	 IF EXIST %5 FIND /I "%1" %5
)
IF "%6" NEQ "" (
	 IF EXIST %6 FIND /I "%1" %6
)
IF "%7" NEQ "" (
	 IF EXIST %7 FIND /I "%1" %7
)
IF "%8" NEQ "" (
	 IF EXIST %8 FIND /I "%1" %8
)
IF "%9" NEQ "" (
	 IF EXIST %9 FIND /I "%1" %9
)
