#Requires AutoHotkey v2.0
#SingleInstance Force
InstallKeybdHook true, true

DebugTip(msg) {
    ToolTip "AHK DEBUG: " msg
    SetTimer () => ToolTip(), -2000
}

DebugTip "スクリプト起動OK（GetKeyState方式）"

SetCapsLockState "AlwaysOff"

; CapsLock単押しを無効化
SC03A::return

; CapsLockが物理的に押されている時だけ有効
#HotIf GetKeyState("SC03A", "P")

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
