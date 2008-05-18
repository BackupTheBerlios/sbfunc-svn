REM ERRORHANDLER
@ECHO OFF

REM Check the Error
IF "%1" == "M1" (
	 echo Please enter Arguments like
	 echo sbf_wrapper COMMAND [ARGS]
)

IF "%1" == "EH1" (
	 echo Enter ERROR Command with Errorlevel
	 echo %ELEVEL%
)

IF "%1" == "G1" (
	 echo Enter GREP with Search Arguments
)

IF "%1" == "G2" (
	 echo Enter GREP with at least one File
)

SET ELEVEL=
sbf_wrapper.bat QUIT