@echo off
REM Simple Batch Functions Wrapper

REM Checking ARGS

IF "%1" == "" (
	 SET ELEVEL=M1
	 sbf_wrapper.bat ERROR %ELEVEL%
	 sbf_wrapper.bat QUIT
)

REM Calling Errorhandler with Errorlevel
IF "%1" == "ERROR" (
	 IF "%2" == "" (
	   SET ELEVEL=EH1
   	 CALL sbf_wrapper.bat ERROR %ELEVEL%
	 	 sbf_wrapper.bat QUIT
    )
 	 CALL INC\ERRORHANDLER.CMD %2
 )

REM Calling
IF "%1" == "GREP" (
	 IF "%2" == "" (
	 	SET ELEVEL=G1
		CALL sbf_wrapper.bat ERROR %ELEVEL%
		sbf_wrapper.bat QUIT
	)
  CALL INC\GREP.CMD %2 %3 %4 %5 %6 %7 %8 %9
)

REM End Routine
IF "%1" == "QUIT" GOTO ENDSBF

:ENDSBF
SET ELEVEL=
REM Quitting