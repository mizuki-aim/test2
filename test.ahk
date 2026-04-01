#Requires AutoHotkey v2.0

; CapsLockのランプを常にOFFにする
SetCapsLockState "AlwaysOff"

; === Emacs風キーバインド（CapsLock + キー） ===

; CapsLock + h → Backspace（左削除）
CapsLock & h::Send "{Backspace}"

; CapsLock + d → Delete（右削除）
CapsLock & d::Send "{Delete}"

; CapsLock + b → 左移動
CapsLock & b::Send "{Left}"

; CapsLock + f → 右移動
CapsLock & f::Send "{Right}"

; CapsLock + p → 上移動
CapsLock & p::Send "{Up}"

; CapsLock + n → 下移動
CapsLock & n::Send "{Down}"

; CapsLock + a → 行頭（Home）
CapsLock & a::Send "{Home}"

; CapsLock + e → 行末（End）
CapsLock & e::Send "{End}"

; CapsLock + Space → IME切り替え（半角/全角キー送信）
CapsLock & Space::Send "{vk1Dsc029}"
