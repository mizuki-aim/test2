#Requires AutoHotkey v2.0
#SingleInstance Force

; === デバッグ用関数 ===
DebugTip(msg) {
    ToolTip "AHK DEBUG: " msg
    SetTimer () => ToolTip(), -2000  ; 2秒後に消す
}

; === 起動確認 ===
DebugTip "スクリプト起動OK"

; CapsLockのランプを常にOFFにする
try {
    SetCapsLockState "AlwaysOff"
    DebugTip "SetCapsLockState OK"
} catch as e {
    DebugTip "SetCapsLockState エラー: " e.Message
}

; === Emacs風キーバインド（CapsLock + キー） ===

CapsLock & h:: {
    DebugTip "CapsLock+h 発火！"
    try {
        Send "{Backspace}"
    } catch as e {
        DebugTip "Send Backspace エラー: " e.Message
    }
}

CapsLock & d:: {
    DebugTip "CapsLock+d 発火！"
    try {
        Send "{Delete}"
    } catch as e {
        DebugTip "Send Delete エラー: " e.Message
    }
}

CapsLock & b:: {
    DebugTip "CapsLock+b 発火！"
    try {
        Send "{Left}"
    } catch as e {
        DebugTip "Send Left エラー: " e.Message
    }
}

CapsLock & f:: {
    DebugTip "CapsLock+f 発火！"
    try {
        Send "{Right}"
    } catch as e {
        DebugTip "Send Right エラー: " e.Message
    }
}

CapsLock & p:: {
    DebugTip "CapsLock+p 発火！"
    try {
        Send "{Up}"
    } catch as e {
        DebugTip "Send Up エラー: " e.Message
    }
}

CapsLock & n:: {
    DebugTip "CapsLock+n 発火！"
    try {
        Send "{Down}"
    } catch as e {
        DebugTip "Send Down エラー: " e.Message
    }
}

CapsLock & a:: {
    DebugTip "CapsLock+a 発火！"
    try {
        Send "{Home}"
    } catch as e {
        DebugTip "Send Home エラー: " e.Message
    }
}

CapsLock & e:: {
    DebugTip "CapsLock+e 発火！"
    try {
        Send "{End}"
    } catch as e {
        DebugTip "Send End エラー: " e.Message
    }
}

CapsLock & Space:: {
    DebugTip "CapsLock+Space 発火！"
    try {
        Send "{vk1Dsc029}"
    } catch as e {
        DebugTip "Send IME エラー: " e.Message
    }
}
