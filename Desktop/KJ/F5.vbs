Set Sh = WScript.CreateObject("WScript.Shell")
Sh.SendKeys "{F5}"
Sh.Run "rundll32.exe shell32.dll,Options_RunDLL 7"
WScript.Sleep 100
Sh.SendKeys "{TAB}{DOWN}(^{ })(^{ }){TAB}{TAB}{ENTER}"
