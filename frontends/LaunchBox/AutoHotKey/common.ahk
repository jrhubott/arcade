#Requires AutoHotkey v2.0

lightgun_exe := 'c:\Arcade\tools\lightgun.exe'

;Function to exit lightgun
ExitLightgun()
{
    if (PID := ProcessExist('Lightgun.exe'))
    {
        ProcessClose PID
        Sleep 500
    }
}