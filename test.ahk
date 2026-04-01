#Requires AutoHotkey v2.0
#SingleInstance Force
InstallKeybdHook true, true

DebugTip(msg) {
    ToolTip "AHK DEBUG: " msg
    SetTimer () => ToolTip(), -2000
}

DebugTip "スクリプト起動OK（変数管理方式）"

SetCapsLockState "AlwaysOff"

; CapsLock状態を変数で管理
global capsDown := false

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
