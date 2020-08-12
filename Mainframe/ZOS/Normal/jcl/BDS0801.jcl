//Z81187B JOB 1,NOTIFY=&SYSUID
//***************************************************/
//COBRUN  EXEC IGYWCL
//COBOL.SYSIN  DD DISP=SHR,DSN=&SYSUID..CBL(BDS0801)
//COBOL.SYSLIB DD DISP=SHR,DSN=&SYSUID..CPY
//LKED.SYSLMOD DD DISP=SHR,DSN=&SYSUID..LOAD(BDS0801)
//***************************************************/
// IF RC = 0 THEN
//***************************************************/
//RUN     EXEC PGM=BDS0801
//STEPLIB   DD DISP=SHR,DSN=&SYSUID..LOAD
//SHOPFILE   DD DISP=SHR,DSN=&SYSUID..CH8.SHOP1
//SYSOUT    DD SYSOUT=*,OUTLIM=15000
//CEEDUMP   DD DUMMY
//SYSUDUMP  DD DUMMY
//***************************************************/
// ELSE
// ENDIF