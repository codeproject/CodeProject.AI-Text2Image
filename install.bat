@if "%1" NEQ "install" (
    echo This script is only called from ..\..\CodeProject.AI-Server\src\setup.bat
    @pause
    @goto:eof
)

REM Download the YOLO models from the CodeProject models/ folder and store in /assets
REM call "%sdkScriptsDirPath%\utils.bat" GetFromServer "models/" "models-yolo8-pt.zip" "assets" "Downloading Standard YOLO models..."