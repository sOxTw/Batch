@ECHO OFF

TITLE CheckPing - By sOxTw
@MODE con cols=85 lines=5
COLOR 09

SET HOST=mc.srolemine.com
SET COUNT=8
SET FOLDER=%UserProfile%\Desktop\PingCMD\
SET FILENAME=%date:~-4,4%-%date:~-7,2%-%date:~-10,2%.txt

@ECHO.
ECHO [Check Ping] Iniciando test a %HOST% - Cantidad de Packetes: %COUNT%

TIMEOUT /T 2 > NUL
CLS
COLOR f0

@ECHO.
ECHO [Check Ping] Al finalizar seras reportado.

if not exist %FOLDER% (
    MKDIR %UserProfile%\Desktop\PingCMD
    CD %UserProfile%\Desktop\PingCMD
    ping %HOST% -n %COUNT% > %FILENAME%
)

if exist %FOLDER% (
    CD %UserProfile%\Desktop\PingCMD
    set FILENAME=%date:~-4,4%-%date:~-7,2%-%date:~-10,2%.txt
    set COUNT=10
    ping %HOST% -n %COUNT% > %FILENAME%
) 

CLS
COLOR 09
@ECHO.
ECHO [Check Ping] Finalizo el informe de RED
ECHO [Check Ping] Lo puedes encontrar en:
ECHO [Check Ping] %FOLDER%%FILENAME%
ECHO Presiona una tecla para cerrar.

PAUSE > NUL