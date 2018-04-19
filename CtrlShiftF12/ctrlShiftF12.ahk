; the combo to be sent is: Ctrl Shift and F12


amountLoops = 200 ; 100 was a good value
Loop, %amountLoops%
{
	Send +^{F12}
	; send with 20 Hz topics
    Sleep, 5 ;10 was a good value; 5 too
}

 ; MsgBox, Done with the %amountLoops% loops.
 