#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
; Opens windows terminal from wox or file explorer by pressing Windows+.
#IfWinActive ahk_class HwndWrapper[Wox.exe;;333cd6a7-7cf8-4883-82d7-bd6b52ddfe78]
^.::
Send ^{Enter}
Sleep 700
Send !d
Send {Del}
Send {Raw}wt
Send {Enter}
return
#IfWinActive ahk_class CabinetWClass
^.::
Send !d
Send {Del}
Send {Raw}wt
Send {Enter}
return