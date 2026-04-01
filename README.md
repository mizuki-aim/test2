# AutoHotkey Emacs風キーバインド設定

CapsLockを修飾キーとして使い、WindowsでMac/Emacsライクな操作を実現するAutoHotkey v2スクリプト。

## キーバインド一覧

| キー | 動作 |
|------|------|
| CapsLock + h | Backspace（左削除） |
| CapsLock + d | Delete（右削除） |
| CapsLock + b | ← 左移動 |
| CapsLock + f | → 右移動 |
| CapsLock + p | ↑ 上移動 |
| CapsLock + n | ↓ 下移動 |
| CapsLock + a | 行頭（Home） |
| CapsLock + e | 行末（End） |
| CapsLock + Space | IME切り替え |

## セットアップ手順

### 前提条件
- AutoHotkey v2.0.22 がインストール済みであること

### 初回起動

1. **既存のAutoHotkeyプロセスを全て終了する**
   - `Ctrl+Shift+Esc` でタスクマネージャーを開く
   - 「AutoHotkey」を探してすべて「タスクの終了」
2. **`test.ahk` をダブルクリックで実行**
3. タスクトレイに緑のHアイコンが表示されればOK

### 動作確認
1. メモ帳を開く
2. 適当にテキストを入力（例：`hello world`）
3. `CapsLock + h` を押す → 最後の文字が消えれば成功

### 自動起動設定
1. `Win + R` → `shell:startup` と入力してEnter
2. 開いたフォルダに `test.ahk` のショートカットを配置

## トラブルシューティング

### 「Could not close the previous instance」エラー
→ タスクマネージャーでAutoHotkeyプロセスを全て終了してから再実行

### スクリプトは起動するが効かない
- 管理者権限で起動しているアプリには効かない場合がある → `test.ahk` を右クリック →「管理者として実行」
- 他のキーリマップソフト（PowerToys等）と競合していないか確認
