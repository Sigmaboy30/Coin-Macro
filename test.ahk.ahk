^k::

loop 2
{

Send, !{tab}{PrintScreen}
Sleep 3000
MouseClickDrag, left, 600, 600, -300, -300
Sleep 3000
Send, !{tab}
Sleep 2000
Send, ^v
Sleep 2000
Send,{Enter}
Sleep 60000

 if (a_index = 3)
break
}


return



