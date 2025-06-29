@echo off

setlocal enabledelayedexpansion

for /f "tokens=1-3" %%a in (GetEvent3.txt) do (
  set "hex1=%%a"
  set "hex2=%%b"
  set "hex3=%%c"
  set /a dec1=0x!hex1!
  set /a dec2=0x!hex2!
  set /a dec3=0x!hex3!
  adb shell sendevent /dev/input/event3 !dec1! !dec2! !dec3!
)

endlocal

