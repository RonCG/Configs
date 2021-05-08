#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
; Opens windows terminal from wox or file explorer by pressing Windows + .
#IfWinActive ahk_exe Wox.exe
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
; Open vscode from file explorer by pressing Ctrl + Shift + .
#IfWinActive ahk_class CabinetWClass
^+.::
Send !d
Send {Del}
Send {Raw}wt
Send {Enter}
Sleep 1000
Send {Raw}code .
Send {Enter}
return