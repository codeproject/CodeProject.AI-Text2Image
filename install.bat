:: Installation script :::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::
::                           Text2Image
::
:: This script is only called from ..\..\CodeProject.AI-Server\src\setup.bat in
:: Dev setup, or ..\..\src\setup.bat in production
::
:: For help with install scripts, notes on variables and methods available, tips,
:: and explanations, see /src/modules/install_script_help.md

@if "%1" NEQ "install" (
    echo This script is only called from ..\..\CodeProject.AI-Server\src\setup.bat
    @pause
    @goto:eof
)

REM Backwards compatibility with Server 2.6.5
if "!utilsScript!" == "" if "!sdkScriptsDirPath!" NEQ "" set utilsScript=%sdkScriptsDirPath%\utils.bat

REM Download the YOLO models from the CodeProject models/ folder and store in /assets
REM call "%utilsScript%" GetFromServer "models/" "models-yolo8-pt.zip" "assets" "Downloading Standard YOLO models..."