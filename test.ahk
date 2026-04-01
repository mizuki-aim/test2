#Requires AutoHotkey v2.0
#SingleInstance Force
InstallKeybdHook true, true

; === デバッグ用関数 ===
DebugTip(msg) {
    ToolTip "AHK DEBUG: " msg
    SetTimer () => ToolTip(), -2000
}

; === 起動確認 ===
DebugTip "スクリプト起動OK（SC03Aモード）"

; CapsLockのランプを常にOFFにする
SetCapsLockState "AlwaysOff"

; === SC03A（CapsLockのスキャンコード）を修飾キーとして使う ===

SC03A & h:: {
    DebugTip "CapsLock+h 発火！"
    Send "{Backspace}"
}

SC03A & d:: {
    DebugTip "CapsLock+d 発火！"
    Send "{Delete}"
}

SC03A & b:: {
    DebugTip "CapsLock+b 発火！"
    Send "{Left}"
}

SC03A & f:: {
    DebugTip "CapsLock+f 発火！"
    Send "{Right}"
}

SC03A & p:: {
    DebugTip "CapsLock+p 発火！"
    Send "{Up}"
}

SC03A & n:: {
    DebugTip "CapsLock+n 発火！"
    Send "{Down}"
}

SC03A & a:: {
    DebugTip "CapsLock+a 発火！"
    Send "{Home}"
}

SC03A & e:: {
    DebugTip "CapsLock+e 発火！"
    Send "{End}"
}

SC03A & Space:: {
    DebugTip "CapsLock+Space 発火！"
    Send "{vk1Dsc029}"
}
