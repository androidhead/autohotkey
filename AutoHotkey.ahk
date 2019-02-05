; IMPORTANT INFO ABOUT GETTING STARTED: Lines that start with a
; semicolon, such as this one, are comments.  They are not executed.

; This script has a special filename and path because it is automatically
; launched when you run the program directly.  Also, any text file whose
; name ends in .ahk is associated with the program, which means that it
; can be launched simply by double-clicking it.  You can have as many .ahk
; files as you want, located in any folder.  You can also run more than
; one ahk file simultaneously and each will get its own tray icon.

; SAMPLE HOTKEYS: Below are two sample hotkeys.  The first is Win+Z and it
; launches a web site in the default browser.  The second is Control+Alt+N
; and it launches a new Notepad window (or activates an existing one).  To
; try out these hotkeys, run AutoHotkey again, which will load this file.


; REFERENCE
; #   Win (Windows logo key). In v1.0.48.01+, for Windows Vista and later, hotkeys that include the Windows key (e.g. #a) will wait for the Windows key to be released before sending any text containing an "L" keystroke. This prevents the Send within such a hotkey from locking the PC. This behavior applies to all sending modes except SendPlay (which doesn't need it) and blind mode.
; !   Alt
; ^   Control
; +   Shift
; &   An ampersand may be used between any two keys or mouse buttons to combine them into a custom hotkey. See below for details. Such hotkeys are ignored (not activated) on Windows 95/98/Me.
; <   Use the left key of the pair. e.g. <!a is the same as !a except that only the left Alt key will trigger it. This symbol is ignored on Windows 95/98/ME.
; >   Use the right key of the pair. This symbol is ignored on Windows 95/98/ME.


;open w:\
#w::Run w:\

;home,end,delete,directions
!8::Send {Home}
;+!0::Send {Shift}+{Home}
!9::send {End}
;+#::send {Shift}+{End}
!j::Send {Down}
;+!j::Send {Shift}+{Down}
!k::Send {Up}
;+!k::Send {Shift}+{Up}
!u::Send {Left} ;commented this out because of conflict with notepad++ key bindings
;+!u::Send {Shift}+{Left}
!i::Send {Right}
;+!i::Send {Shift}+{Right}
!y::Send {Del}


;Custom Sound Controls
#F10::Send {Volume_Mute}
#F11::Send {Volume_Down}
#F12::Send {Volume_Up}





^!n::
;IfWinExist TextPad - Document1
IfWinExist ahk_class TextPad5
	WinActivate
else
	Run Textpad
return


; Note: From now on whenever you run AutoHotkey directly, this script
; will be loaded.  So feel free to customize it to suit your needs.

; Please read the QUICK-START TUTORIAL near the top of the help file.
; It explains how to perform common automation tasks such as sending
; keystrokes and mouse clicks.  It also explains more about hotkeys.

