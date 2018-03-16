nr1x = -1
nr1y = -1
ImageSearch, nr1x, nr1y, 0, 0, 1920, 1080, C:\Users\mpetrick\Desktop\AutoHotKey_ConfirmTotalCommander\nr1.bmp ; never use PNG!
; TODO maybe greyscale later the picture to achive more precision with different color-schemes

; TODO turn this into a function, so that only the string has to be handed over
FileAppend Picture nr1 found at %nr1x%:%nr1y% `n, *

ImageSearch, nr1x, nr1y, 0, 0, 1920, 1080, C:\Users\mpetrick\Desktop\AutoHotKey_ConfirmTotalCommander\nr2.bmp ; never use PNG!
FileAppend Picture nr2 found at %nr1x%:%nr1y% `n, *

MouseMove, nr1x, nr1y