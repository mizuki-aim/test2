#Requires AutoHotkey v2.0
#SingleInstance Force
InstallKeybdHook true, true

DebugTip(msg) {
    ToolTip "AHK DEBUG: " msg
    SetTimer () => ToolTip(), -2000
}

DebugTip "スクリプト起動OK"

SetCapsLockState "AlwaysOff"

; CapsLock状態を変数で管理
global capsDown := false

; sc03Aの押下を検知し、離されるまで待つ（1ハンドラで完結）
*sc03A:: {
    global capsDown := true
    KeyWait "sc03A"
    global capsDown := false
}

; CapsLockが押されていて、かつCtrl/Alt/Shiftが押されていない時だけ有効
#HotIf capsDown && !GetKeyState("Ctrl") && !GetKeyState("Alt") && !GetKeyState("Shift")

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
