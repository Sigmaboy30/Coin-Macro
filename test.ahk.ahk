Esc::ExitApp

IfWinActive ahk_exe chrome.exe		 ;checks for chrome being active
{

k::

msgbox, Starting
sleep 10000

loop 1
{

Send, !{tab} 	;switches tabs to the crypto
sleep 1000
Send,{PrintScreen}	;takes a screenshot of the market cap
Sleep 3000	
MouseClickDrag, left, 600, 600, -300, -300 ;cordinates of the screenshot (will be able to be changed in the future)
Sleep 3000
Send, !{tab} 	;changes back to sender or logs app
Sleep 2000
Send, ^v 	;pastes screenshot into logs or sender app
Sleep 2000
Send,{Enter}
Sleep 1
 if (a_index = 1)
break

}
}
else
{
msgbox, where my crypto bro 😡
}






