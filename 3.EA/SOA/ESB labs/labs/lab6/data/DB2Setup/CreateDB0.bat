db2 -v -f CreateDB1.ddl

db2 bind '%db2tempdir%\bnd\@db2cli.lst' blocking all grant public

@echo *****************************************
@echo Check for errors. if none, press 'enter'.
@pause
exit
