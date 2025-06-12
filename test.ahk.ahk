;K Starts the macro
;Esc exits and stops the macro

;it'll screenshot the current market cap and send it to somebody, could be your alt acc or your partner

;keep crypto site open on whatever browser and make sure market cap is visible

;also you can change time it checks market cap and where it takes the screenshot, you're able to change everything according to your needs
; il prob make a better version to change but for now do some work yourself :pray:



SetTitleMatchMode, 2

Esc::ExitApp	





k::



msgbox, Starting 
sleep 10000

loop 
{


 	IfWinExist, ahk_exe chrome.exe  ; yeah you can change this to your browser, i use chrome for crypto
    {
	
		 WinGetTitle, title, ahk_exe chrome.exe
		 if InStr(title, "DEX")  ; and uhh this checks if dextertools are active, you could change it to whatever you use to check the value of coins
        {

	
		WinActivate, ahk_exe chrome.exe
		
		sleep 1000
		Send,{PrintScreen}	;takes a screenshot of the market cap
		Sleep 3000	
		MouseClickDrag, left, 79, 241, 1352, -5 ;cordinates of the screenshot, change according to where the market cap shows up
		Sleep 3000


		WinActivate, ahk_exe ApplicationFrameHost.exe ; you could change this to the sender app's application if you want.
		Sleep 2000
		Send, ^v 	;pastes screenshot into sender app
			Sleep 120000
			Send,{Enter}
			Sleep 1
 			if (a_index = 5)
				break

		}
		else
		{
		msgbox, no crypto open :sob:
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








