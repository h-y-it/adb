
rem �����p�t�H���_��IVI�ɍ��
adb shell mkdir /sdcard/ScreenShot1 > nul

rem �f�t�H���g�̃X�N���[�����L���v�`������

rem �z�[����ʂ̃X�N���[�����L���v�`������
adb shell screencap /sdcard/ScreenShot1/Screen1.png > nul

rem �E�ɃX���C�v���ăz�[����ʂ�2�y�[�W�ڂ̃X�N���[�����L���v�`������


adb shell getevent

/dev/input/event3: 0001 02e8 00000001
/dev/input/event3: 0000 0000 00000000

/dev/input/event3: 0001 02e8 00000000
/dev/input/event3: 0000 0000 00000000


adb shell sendevent /dev/input/event3 1 744 1 //keydown event
adb shell sendevent /dev/input/event3 0 0 0

adb shell sendevent /dev/input/event3 1 744 0 //key up event
adb shell sendevent /dev/input/event3 0 0 0

adb shell getevent -tl /dev/input/event3

