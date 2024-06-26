@echo off

Title Auto-installer-of-Winget-and-Programs by mo00ot.

winget -v 
if not %ERRORLEVEL% EQU 0 (
    call %~dp0wingetdownloader.bat
    if %ERRORLEVEL% NEQ 0 (
        echo Winget installation failed.
        exit /b %ERRORLEVEL%
    )
)

Echo Installing Firefox ESR, Notepad++, Advanced IP Scanner, 7-Zip, WinSCP, PuTTY, qBittorrent, NordVPN(free meshnet) and HWMonitor.
color a
pause 
Echo Installing Firefox ESR...
winget install Mozilla.Firefox.ESR
if %ERRORLEVEL% EQU 0 (
    Echo Firefox ESR installed successfully. 
) else (
    Echo Failed to install Firefox ESR.
)

Echo Installing Notepad++...
winget install Notepad++.Notepad++
if %ERRORLEVEL% EQU 0 (
    Echo Notepad++ installed successfully. 
) else (
    Echo Failed to install Notepad++.
)

Echo Installing Advanced IP Scanner...
winget install Famatech.AdvancedIPScanner
if %ERRORLEVEL% EQU 0 (
    Echo Advanced IP Scanner installed successfully. 
) else (
    Echo Failed to install Advanced IP Scanner.
)

Echo Installing 7-Zip...
winget install 7zip.7zip
if %ERRORLEVEL% EQU 0 (
    Echo 7-Zip installed successfully. 
) else (
    Echo Failed to install 7-Zip.
)

Echo Installing WinSCP...
winget install WinSCP.WinSCP
if %ERRORLEVEL% EQU 0 (
    Echo WinSCP installed successfully. 
) else (
    Echo Failed to install WinSCP.
)

Echo Installing PuTTY...
winget install PuTTY.PuTTY
if %ERRORLEVEL% EQU 0 (
    Echo PuTTY installed successfully. 
) else (
    Echo Failed to install PuTTY.
)

Echo Installing NordVPN - (free meshnet)...
winget install NordSecurity.NordVPN
if %ERRORLEVEL% EQU 0 (
    Echo NordVPN installed successfully. 
) else (
    Echo Failed to install NordVPN.
)

Echo Installing HWMonitor...
winget install CPUID.HWMonitor
if %ERRORLEVEL% EQU 0 (
    Echo HWMonitor installed successfully. 
) else (
    Echo Failed to install HWMonitor.
)