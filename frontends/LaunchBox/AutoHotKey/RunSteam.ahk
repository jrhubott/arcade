#Requires AutoHotkey v2.0
#SingleInstance Force
#Include common.ahk
;Run 'steam://rungameid/314540'

if A_Args.Length == 0
{
    A_Args :=['c:\windows\notepad.exe','notepad.exe']
}

if A_Args.Length == 3
{
    Option := A_Args[3]
}
else
{
    Option := 'none'
}

;Always exit the lightgun program if it is running
ExitLightgun

;Check for lightgun option
if option == 'lightgun'|| option == 'lightgun_borderon'
{
    Run 'c:\Arcade\tools\lightgun.exe'
}

Run A_Args[1]

;Find the window and wait, exit script if not found
if (WinWait('ahk_exe ' A_Args[2],,10) == 0)
{
    MsgBox("Window not found")
    ExitApp
}

;Wait for the window to close
WinWaitClose 'ahk_exe ' A_Args[2]

;Shutdown programs
ExitLightgun


;Process, Wait, PaperMonstersRecut_PC.exe, 10 ;max 10 sec.
;Process, WaitClose, PaperMonstersRecut_PC.exe
ExitApp

Esc::
{
    WinClose 'ahk_exe ' A_Args[2]
}