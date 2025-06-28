adb shell getevent /dev/input/event1 > /sdcard/event.txt

adb shell cat /sdcard/event.txt|while read a;do set $a;sendevent /dev/input/event1 $((0x$1)) $((0x$2)) $((0x$3));done

