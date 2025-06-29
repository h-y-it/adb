@echo off

setlocal enabledelayedexpansion

for /f "tokens=1-4" %%a in (GetEvent.txt) do (
 if %%a==/dev/input/event3: (
  set "hex1=%%b"
  set "hex2=%%c"
  set "hex3=%%d"
  set /a dec1=0x!hex1!
  set /a dec2=0x!hex2!
  set /a dec3=0x!hex3!
  adb shell sendevent /dev/input/event3 !dec1! !dec2! !dec3!
 )
)

endlocal

