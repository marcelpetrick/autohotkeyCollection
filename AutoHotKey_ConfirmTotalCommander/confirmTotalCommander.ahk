nr1x = 0
nr1y = 0
ImageSearch, OutputVarX, OutputVarY, 0, 0, 1920, 1080, nr1.png

OutputDebug, %A_Now%: Because the window "%TargetWindowTitle%" did not exist, the process was aborted.

; TODO turn this into a function, so that only the string has to be handed over
FileAppend line 1`n, *