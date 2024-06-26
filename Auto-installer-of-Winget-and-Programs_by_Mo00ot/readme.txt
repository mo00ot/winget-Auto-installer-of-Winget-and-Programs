Created by mo00ot. for bugs contact mootobject@duck.com <Object: Auto-installer-of-Winget-and-Programs-BUGS > Discord: https://discord.gg/CXU5vCdWkY
if you have upgraded the script please write to me.
Preconfigurated with Firefox ESR, Notepad++, Advanced IP Scanner, 7-Zip, WinSCP, PuTTY, qBittorrent, NordVPN and HWMonitor.


run with administrator rights winget.bat
winget requires you to accept the conditions, accept and the script will continue installing Firefox, Notepad++, AdvanceIPScanner.
at the end delete the file downloaded by the downloader script

not place in or under directory with space in the name: the powershell script will be crash

#TO ADD PROGRAMS in the script <remove the *>

--part 1--

open a cmd
type: winget search *name of the program*    
copy id of it

EXAMPLE: 
		input:
winget search chrome
		output:
Name                                            Id                         Version       Correspondence        From
-----------------------------------------------------------------------------------------------------------------------
DC Browser - Chrome and IE kernel               XP8BV7F2CT4LDK             Unknown                              msstore
chrome-profile-selector                         9PJNCKNGGF2D               Unknown                              msstore
Google Chrome                                   Google.Chrome              123.0.6312.87  Moniker: chrome       winget
Dichromate                                      Dichromate.Browser         110.0.5481.178 Command: chrome       winget
Chrome Remote Desktop Host                      Google.ChromeRemoteDesktop 123.0.6312.16  Tag: chrome           winget
xpchrome                                        weolar.xpchrome            115.0.5790.136                       winget
Ginger Chrome                                   Saxo_Broko.GingerChrome    93.0.4529.0                          winget
ChromeCacheView                                 NirSoft.ChromeCacheView    2.45                                 winget
ICBCChromeExtension                             ICBC.ICBCChromeExtension   1.2.0.0                              winget
Google Chrome Canary                            Google.Chrome.Canary       125.0.6381.0                         winget
ChromeDriver for Chrome 111                     Chromium.ChromeDriver      114.0.5735.90                        winget
360 极速浏览器X                                 360.360Chrome.X            22.1.1090.64                         winget
360极速浏览器                                   360.360Chrome              13.5.2044.0                          winget
115浏览器                                       115.115Chrome              26.0.5.3                             winget
Google Chrome Beta                              Google.Chrome.Beta         124.0.6367.8                         winget
Google Chrome Dev                               Google.Chrome.Dev          125.0.6368.2                         winget
Vision Teacher for Chromebooks Machine-Wide In… Netop.VisionTeacher        1.7.6.0                              winget
Inssist
		search the program wich you want and copy the id<check the suorce(i reccomended "winget")>
		the id of chrome as Google.Chrome

--part 2--

open winget.bat with notepad

and add at the end of the script 


Echo Installing *name of the program*								
winget install *id of the program*					
if %ERRORLEVEL% EQU 0 (									
    Echo *name of the program* installed successfully. 	
) else (														
    Echo Failed to install *name of the program*.				
)

with chrome:

Echo Installing Chrome								
winget install google.chrome					
if %ERRORLEVEL% EQU 0 (									
    Echo Chrome installed successfully. 	
) else (														
    Echo Failed to install Chrome.				
)

----------------

you can use this script to update the programs installed with it.
