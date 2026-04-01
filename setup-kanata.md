# Kanata セットアップ手順

## 1. ダウンロード

1. https://github.com/jtroo/kanata/releases にアクセス
2. 最新リリースから **`kanata.exe`** をダウンロード
   - 通常版: `kanata.exe`
   - うまくいかない場合: `kanata_winIOv2.exe`（Interceptionドライバ版）
3. デスクトップにフォルダを作成:
   ```
   C:\Users\LP5122\Desktop\kanata\
   ```
4. ダウンロードした `kanata.exe` をそのフォルダに入れる

## 2. 設定ファイル配置

1. このリポジトリの `kanata.kbd` を同じフォルダにコピー:
   ```
   C:\Users\LP5122\Desktop\kanata\kanata.kbd
   ```

## 3. 既存AHKの停止

1. タスクマネージャーで **AutoHotkey を全て終了**
2. startup フォルダにAHKのショートカットがあれば削除

## 4. 動作テスト

1. **コマンドプロンプトを管理者として実行**
   - スタートメニュー → 「cmd」と入力 → 「管理者として実行」
2. 以下を実行:
   ```
   cd C:\Users\LP5122\Desktop\kanata
   kanata.exe -c kanata.kbd
   ```
3. エラーが出なければ成功。ターミナルは開いたままにする
4. メモ帳を開いてテスト:
   - `hello` と入力 → CapsLock + h → 末尾が消えるか
   - CapsLock + a → カーソルが行頭に移動するか
   - CapsLock + e → カーソルが行末に移動するか
   - 日本語入力で「だいがく」と打てるか

## 5. 自動起動設定（動作確認後）

### 方法A: スタートアップフォルダ（簡単）
1. `Win+R` → `shell:startup` → Enter
2. そのフォルダ内で右クリック → 新規 → ショートカット
3. 場所に以下を入力:
   ```
   C:\Users\LP5122\Desktop\kanata\kanata.exe -c C:\Users\LP5122\Desktop\kanata\kanata.kbd
   ```
4. 名前: `Kanata`
5. 作成されたショートカットを右クリック → プロパティ → 「実行時の大きさ」→「最小化」

### 方法B: タスクスケジューラ（管理者権限が必要な場合）
1. スタートメニュー → 「タスクスケジューラ」
2. 「タスクの作成」→ 名前: `Kanata`
3. 「最上位の特権で実行する」にチェック
4. トリガー → 新規 → 「ログオン時」
5. 操作 → 新規 → プログラム: `C:\Users\LP5122\Desktop\kanata\kanata.exe`
6. 引数の追加: `-c C:\Users\LP5122\Desktop\kanata\kanata.kbd`

## 6. トラブルシューティング

### 「Permission denied」エラー
→ 管理者権限でcmdを起動して実行

### キーが効かない
→ `kanata_winIOv2.exe` を試す（Interceptionドライバが必要な場合あり）

### 設定を確認だけしたい（実際にリマップせず）
```
kanata.exe --check -c kanata.kbd
```

### IME切り替えが効かない場合
`kanata.kbd` の `(arbitrary-code 41)` を以下に変えて試す:
- `kana` （カナキー）
- `henk` （変換キー）

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
| CapsLock 単押し | 何もしない |
