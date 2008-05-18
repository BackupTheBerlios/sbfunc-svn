@echo off

IF "%1" == "" (
	 SET ELEVEL=I1
	 sbf_wrapper.bat ERROR %ELEVEL%
)

IF "%2" == "" (
	 SET ELEVEL=I2
	 sbf_wrapper.bat ERROR %ELEVEL%
)

if "%3" == "" (
	 SET ELEVEL=I3
	 sbf_wrapper.bat ERROR %ELEVEL%
)

REM Check Arguments

IF "%2" NEQ ">" OR "%2" NEQ "=" OR "%2" NEQ "<" (
	SET ELEVEL=I3
	sbf_wrapper.bat ERROR %ELEVEL%
) ELSE (
	IF 
