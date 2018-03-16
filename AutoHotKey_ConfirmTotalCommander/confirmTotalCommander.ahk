; Small helper which shall confirm successfully the three-button-question at the start of the non-registered version of Total Commander 9.12.

; get the size of the virtual screen and print it to the runtimepoutput of Scite4AHK
; https://www.autohotkey.com/docs/commands/SysGet.htm
;78, 79	SM_CXVIRTUALSCREEN, SM_CYVIRTUALSCREEN: Width and height of the virtual screen, in pixels. The virtual screen is the bounding rectangle of all display monitors. The SM_XVIRTUALSCREEN, SM_YVIRTUALSCREEN metrics are the coordinates of the top-left corner of the virtual screen.
SysGet, virtualScreenWidth, 78 ;width
SysGet, virtualScreenHeight, 79 ;height
FileAppend virtualScreen-size is %virtualScreenWidth%:%virtualScreenHeight% `n, *
FileAppend Current screen size %A_ScreenWidth%:%A_ScreenHeight% `n, *

; used to trigger the final click
confirmPosX = -1
confirmPosY = -1

; since the x-diff is currently -110, 0 or 110 pixels, I will just determine a factor: set to -1, 0 or 1
factor = -2

; do the image-search run with all three alternatives
nr1x = -1
nr1y = -1

IfNotEqual, factor, -2
{
	ImageSearch, nr1x, nr1y, 0, 0, virtualScreenWidth, virtualScreenHeight, C:\Users\mpetrick\Desktop\AutoHotKey_ConfirmTotalCommander\nr1.bmp ; never use PNG!
	; TODO maybe greyscale later the picture to achive more precision with different color-schemes
	FileAppend found something with nr1 `n, *
	factor = -1
}

IfNotEqual, factor, -2
{
	ImageSearch, nr1x, nr1y, 0, 0, virtualScreenWidth, virtualScreenHeight, C:\Users\mpetrick\Desktop\AutoHotKey_ConfirmTotalCommander\nr2.bmp ; never use PNG!
	; TODO maybe greyscale later the picture to achive more precision with different color-schemes
	FileAppend found something with nr2 `n, *
	factor = 0
}

IfNotEqual, factor, -2
{
	ImageSearch, nr1x, nr1y, 0, 0, virtualScreenWidth, virtualScreenHeight, C:\Users\mpetrick\Desktop\AutoHotKey_ConfirmTotalCommander\nr3.bmp ; never use PNG!
	; TODO maybe greyscale later the picture to achive more precision with different color-schemes
	FileAppend found something with nr3 `n, *
	factor = 1
}

; search on current monitor with maximum range
ImageSearch, nr1x, nr1y, 0, 0, A_ScreenWidth, A_ScreenHeight, C:\Users\mpetrick\Desktop\AutoHotKey_ConfirmTotalCommander\nr2.bmp ; never use PNG!
FileAppend Picture found at %nr1x%:%nr1y% `n, * ; check result ... before doing something else

; MouseMove, nr1x, nr1y
; ControlClick, , "Total Commander", "2" ; not sure how to use this .. so we rely now on relative coords

/*
if (nr1x != -1 && nr1y != -1) {
	FileAppend found something `n, *
}
else {
	FileAppend found nothing `n, *
}
*/
