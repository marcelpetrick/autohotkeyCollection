

; the combo to be sent Ctrl Shift and F12

amountLoops = 20
Loop, %amountLoops%
{
	Send +^{F12}
    Sleep, 10
}

 MsgBox, Done with the %amountLoops% loops.
 