@echo off
::设置为UTF-8编码
chcp 65001

::填写路径设置
set w3x2lniPath=%~1\tools\w3x2lni\w2l.exe
echo "當前 w3x2lni 路徑為 %w3x2lniPath%"
set mapDir=%~1
set mapName=%~3.w3x
set mapPath=%mapDir%\%mapName%
set command=%~2
echo "當前操作為 %command%"
if "%command%"=="obj" (
    echo "開始打包 %mapName% 資料夾為 %mapDir%"
    %w3x2lniPath% obj %mapDir%\.w3x %mapPath%
) else if "%command%"=="lni" (
    echo "開始解包 %mapName% 為資料夾"
    %w3x2lniPath% lni %mapPath% %mapDir%
)