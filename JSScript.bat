echo off
SET SendKeys=CScript //nologo //E:JScript "%~F0"

//set your preference link in ""


START opera -new-window-private --incognito "facebook.com.br"
TIMEOUT /t 4
%SendKeys% "Hello"
%SendKeys% "TAB"
%SendKeys% "null"
%SendKeys% "{null}"

GOTO :EOF

@end


// JScript section


var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));0
