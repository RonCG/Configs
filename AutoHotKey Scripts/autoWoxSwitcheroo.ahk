#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
; Open wox automatically in switcheroo plugin by pressing Alt + q
#IfWinNotActive ahk_exe Wox.exe
!q::
Send !{Space}
Sleep 200
Send w{Space}