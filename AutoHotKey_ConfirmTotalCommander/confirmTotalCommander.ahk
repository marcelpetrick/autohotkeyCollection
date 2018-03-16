; Small helper which shall confirm successfully the three-button-question at the start of the non-registered version of Total Commander 9.12.

; get the size of the virtual screen and print it to the runtimepoutput of Scite4AHK
; https://www.autohotkey.com/docs/commands/SysGet.htm
;78, 79	SM_CXVIRTUALSCREEN, SM_CYVIRTUALSCREEN: Width and height of the virtual screen, in pixels. The virtual screen is the bounding rectangle of all display monitors. The SM_XVIRTUALSCREEN, SM_YVIRTUALSCREEN metrics are the coordinates of the top-left corner of the virtual screen.
SysGet, virtualScreenWidth, 78 ;width
SysGet, virtualScreenHeight, 79 ;height
FileAppend virtualScreen-size is %virtualScreenWidth%:%virtualScreenHeight% `n, *

nr1x = -1
nr1y = -1
ImageSearch, nr1x, nr1y, 0, 0, virtualScreenWidth, virtualScreenHeight, C:\Users\mpetrick\Desktop\AutoHotKey_ConfirmTotalCommander\nr1.bmp ; never use PNG!
; TODO maybe greyscale later the picture to achive more precision with different color-schemes

; TODO turn this into a function, so that only the string has to be handed over
FileAppend Picture nr1 found at %nr1x%:%nr1y% `n, *

; search on current monitor with maximum range
ImageSearch, nr1x, nr1y, 0, 0, A_ScreenWidth, A_ScreenHeight, C:\Users\mpetrick\Desktop\AutoHotKey_ConfirmTotalCommander\nr2.bmp ; never use PNG!
FileAppend Picture nr2 found at %nr1x%:%nr1y% `n, *

MouseMove, nr1x, nr1y

FileAppend Current screen size %A_ScreenWidth%:%A_ScreenHeight% `n, *
