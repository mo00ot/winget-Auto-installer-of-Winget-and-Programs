@echo off
Title Download of Winget and addictions by mo00ot.
color 2

curl -L -o "%~dp0winget.msixbundle" "https://aka.ms/getwinget"
if %ERRORLEVEL% EQU 0 (
    Echo Download completed successfully. 
) else (
    Echo Failed to Download winget.
)
timeout 2 >NUL
curl -L -o "%~dp0Microsoft.VCLibs.x64.14.00.Desktop.appx" "https://aka.ms/Microsoft.VCLibs.x64.14.00.Desktop.appx"
if %ERRORLEVEL% EQU 0 (
    Echo Download completed successfully. 
) else (
    Echo Failed to Download VCLibs.
)
timeout 2 >NUL
curl -L -o "%~dp0Microsoft.UI.Xaml.2.8.x64.appx" "https://github.com/microsoft/microsoft-ui-xaml/releases/download/v2.8.6/Microsoft.UI.Xaml.2.8.x64.appx"
if %ERRORLEVEL% EQU 0 (
    Echo Download completed successfully. 
) else (
    Echo Failed to Download UI-Xaml.
)
timeout 2 >NUL
cls
Powershell.exe -executionpolicy bypass -File  %~dp0wingetinstaller.ps1
cls
CALL %~dp0winget.bat
