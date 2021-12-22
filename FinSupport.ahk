#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.

;Code by Montahc
;FinSupport v1.0

SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

CoordMode, Click, Screen
SendMode Input
divisions := 40

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
	Sleep, 50
	xcur := xcur + xinc
	ycur := ycur + yinc
	MouseMove, xcur, ycur
	Click
	i+=1
}
BlockInput Off
return

^`::
SoundBeep
InputBox, OutputVar, Set number of supports, How many supports to create in the line?
divisions := OutputVar
return



RemoveToolTip:
ToolTip
return
