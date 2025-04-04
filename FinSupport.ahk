#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.

;Code by Montahc
;FinSupport v1.1

SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

CoordMode, Click, Screen
SendMode Input
divisions := 40
doubleclickdelay := 100

^1::
MouseGetPos, xposA, yposA
ToolTip, % xposA " " yposA
SetTimer, RemoveToolTip, -5000
SoundBeep
return

^2::
MouseGetPos, xposB, yposB
ToolTip, % xposB " " yposB
SetTimer, RemoveToolTip, -5000
SoundBeep
return

^3::
SoundBeep
Sleep 300
BlockInput On
xcur := xposA
ycur := yposA
xinc := (xposB - xposA)/divisions
yinc := (yposB - yposA)/divisions
i := 0
while(i < divisions) 
{
	Sleep, 100
	SetTimer, RemoveToolTip, -100
	xcur := xcur + xinc
	ycur := ycur + yinc
	MouseMove, xcur, ycur
	ToolTip, % xcur " " ycur
	Click, Down
	Sleep, doubleclickdelay
	Click, Up
	i+=1
}
BlockInput Off
return

^`::
SoundBeep
InputBox, OutputVar, Set number of supports, How many supports to create in the line?
divisions := OutputVar
return

^TAB::
SoundBeep
InputBox, OutputVar, Set Double Click Delay (in ms)?
doubleclickdelay := OutputVar
return



RemoveToolTip:
ToolTip
return
