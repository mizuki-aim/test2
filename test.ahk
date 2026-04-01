#Requires AutoHotkey v2.0
#SingleInstance Force
InstallKeybdHook true, true  ; 低レベルキーボードフックを強制インストール

; === デバッグ用関数 ===
DebugTip(msg) {
    ToolTip "AHK DEBUG: " msg
    SetTimer () => ToolTip(), -2000
}

; === 起動確認 ===
DebugTip "スクリプト起動OK - F1で動作テスト"

; CapsLockのランプを常にOFFにする
SetCapsLockState "AlwaysOff"

; === F1テスト（AHK自体が動くか確認用） ===
F1:: {
    DebugTip "F1が発火！AHK自体は動いています"
}

; === Emacs風キーバインド（CapsLock + キー） ===

CapsLock & h:: {
    DebugTip "CapsLock+h 発火！"
    Send "{Backspace}"
}

CapsLock & d:: {
    DebugTip "CapsLock+d 発火！"
    Send "{Delete}"
}

CapsLock & b:: {
    DebugTip "CapsLock+b 発火！"
    Send "{Left}"
}

CapsLock & f:: {
    DebugTip "CapsLock+f 発火！"
    Send "{Right}"
}

CapsLock & p:: {
    DebugTip "CapsLock+p 発火！"
    Send "{Up}"
}

CapsLock & n:: {
    DebugTip "CapsLock+n 発火！"
    Send "{Down}"
}

CapsLock & a:: {
    DebugTip "CapsLock+a 発火！"
    Send "{Home}"
}

CapsLock & e:: {
    DebugTip "CapsLock+e 発火！"
    Send "{End}"
}

CapsLock & Space:: {
    DebugTip "CapsLock+Space 発火！"
    Send "{vk1Dsc029}"
}
