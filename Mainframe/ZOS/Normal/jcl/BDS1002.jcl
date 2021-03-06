//Z81187B JOB 1,NOTIFY=&SYSUID
//***************************************************/
// SET COBPGM='BDS1002'
//COBRUN  EXEC IGYWCL
//COBOL.SYSIN  DD DISP=SHR,DSN=&SYSUID..CBL(&COBPGM.)
//COBOL.SYSLIB DD DISP=SHR,DSN=&SYSUID..CPY
//LKED.SYSLMOD DD DISP=SHR,DSN=&SYSUID..LOAD(&COBPGM.)
//***************************************************/
// IF RC = 0 THEN
//***************************************************/
//RUN     EXEC PGM=&COBPGM.
//STEPLIB   DD DISP=SHR,DSN=&SYSUID..LOAD
//CENSFILE  DD DISP=SHR,DSN=&SYSUID..C10.CENSFILE
//RPTFILE   DD SYSOUT=*,OUTLIM=15000
//SYSOUT    DD SYSOUT=*,OUTLIM=15000
//CEEDUMP   DD DUMMY
//SYSUDUMP  DD DUMMY
//***************************************************/
// ELSE
// ENDIF