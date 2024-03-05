@echo off
REM echo La param est:%1
REM ECHO %1 
REM ECHO %~nx1
set fileMbName=%~nx1
set fileMbFullName=%1
set fileErrorName=%fileMbName:.mb=.ERR%
set fileErrorFullName=%fileMbFullName:.mb=.ERR%
REM echo fileMbName=%fileMbName%
REM echo fileMbFullName=%fileMbFullName%
REM echo fileErrorName=%fileErrorName%
REM echo fileErrorFullName=%fileErrorFullName%


if exist %fileErrorFullName% (
    rem echo "Erreurs trouvees"
    for /f "delims=" %%i in  (%fileErrorFullName%) do (
      echo "Erreur de compilation : "%%i
      echo %%i
      )

) else (
    echo "Compilation successfull"
)

