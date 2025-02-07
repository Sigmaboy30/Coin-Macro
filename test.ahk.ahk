SetTitleMatchMode, 2
Esc::ExitApp




k::

msgbox, Starting 
sleep 10000

loop 
{

 IfWinExist, ahk_exe chrome.exe  
    {
	
	 WinGetTitle, title, ahk_exe chrome.exe
	 if InStr(title, "DEX")  
        {

	WinActivate, ahk_exe chrome.exe
	
	sleep 1000
	Send,{PrintScreen}	;takes a screenshot of the market cap
		Sleep 3000	
	MouseClickDrag, left, 79, 241, 1352, -5 ;cordinates of the screenshot
	Sleep 3000


	WinActivate, ahk_exe ApplicationFrameHost.exe
	Sleep 2000
	Send, ^v 	;pastes screenshot into logs or sender app
		Sleep 120000
		Send,{Enter}
		Sleep 1
 		if (a_index = 5)
			break

		}
		else
		{
		msgbox, no crypto open
		break
		}
	}
	else
	{
msgbox, where my crypto bro 😡
break
}
}


return	








