#Requires AutoHotkey v2.0
#SingleInstance Force
InstallKeybdHook true, true

DebugTip(msg) {
    ToolTip "AHK DEBUG: " msg
    SetTimer () => ToolTip(), -2000
}

DebugTip "スクリプト起動OK（VKF0/F2方式）"

SetCapsLockState "AlwaysOff"

; CapsLock状態を変数で管理
; 押す時=VKF0 SC03A、離す時=VKF2 SC03A（日本語IME環境）
global capsDown := false

*VKF0SC03A:: {
    global capsDown := true
}

*VKF2SC03A:: {
    global capsDown := false
}

*SC03A:: {
    global capsDown := true
}

*SC03A Up:: {
    global capsDown := false
}

#HotIf capsDown

h::Send "{Backspace}"
d::Send "{Delete}"
b::Send "{Left}"
f::Send "{Right}"
p::Send "{Up}"
n::Send "{Down}"
a::Send "{Home}"
e::Send "{End}"
Space::Send "{vk1Dsc029}"

#HotIf
