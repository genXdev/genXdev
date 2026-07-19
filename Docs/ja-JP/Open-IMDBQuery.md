# Open-IMDBQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `imdb

## Synopsis

> IMDb検索クエリをウェブブラウザで開きます。

## Description

豊富な設定オプションを備え、Webブラウザで「Internet Movie Database」クエリを開きます。この関数は、IMDBの検索機能の便利なラッパーを提供し、ユーザーがPowerShellから直接映画、テレビ番組、俳優、その他のエンターテイメントコンテンツを検索できるようにします。

この関数は検索語を受け取り、適切なIMDB検索URLを構築し、指定されたWebブラウザで開きます。ウィンドウの位置調整、ブラウザの選択、表示オプションをカスタマイズ可能です。Edge、Chrome、Firefoxを含むすべての主要ブラウザをサポートし、プライベートブラウジング、全画面モード、ウィンドウ管理のオプションを提供します。

主な機能には、マルチモニター対応、言語ローカライゼーション、キーボード自動化、包括的なブラウザ設定オプションが含まれます。この関数は複数の検索クエリを同時に処理でき、対話的な使用と自動化されたワークフローの両方のオプションを提供します。

## Syntax

```powershell
Open-IMDBQuery -Queries <String[]> [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | IMDBで検索するための検索語 |
| `-Language` | String | — | — | 1 | — | 検索結果の表示言語 |
| `-Monitor` | Int32 | — | — | Named | `-1` | 使用するモニター、0 = デフォルト、-1 = 破棄、-2 = 設定されたセカンダリモニター、デフォルトは-1 |
| `-Width` | Int32 | — | — | Named | `-1` | ウェブブラウザウィンドウの初期幅 |
| `-Height` | Int32 | — | — | Named | `-1` | Webブラウザウィンドウの初期の高さ |
| `-X` | Int32 | — | — | Named | `-999999` | ウェブブラウザウィンドウの初期X位置 |
| `-Y` | Int32 | — | — | Named | `-999999` | ウェブブラウザウィンドウの初期Y位置 |
| `-AcceptLang` | String | — | — | Named | — | ブラウザのaccept-lang HTTPヘッダーを設定する |
| `-KeysToSend` | String[] | — | — | Named | — | ブラウザウィンドウに送信するキーストローク。詳細については、コマンドレット GenXdev\Send-Key のドキュメントを参照してください。 |
| `-Private` | SwitchParameter | — | — | Named | — | シークレットモードで開く |
| `-Force` | SwitchParameter | — | — | Named | — | 必要に応じて既存のブラウザを停止し、デバッグポートを強制的に有効にします |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge で開く |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome で開く |
| `-Chromium` | SwitchParameter | — | — | Named | — | デフォルトのブラウザに応じて、Microsoft EdgeまたはGoogle Chromeで開きます |
| `-Firefox` | SwitchParameter | — | — | Named | — | Firefox で開く |
| `-PlayWright` | SwitchParameter | — | — | Named | — | OSにインストールされているブラウザの代わりにPlaywright管理のブラウザを使用する |
| `-Webkit` | SwitchParameter | — | — | Named | — | Playwright 管理の WebKit ブラウザを開きます。-PlayWright を暗示します。 |
| `-Headless` | SwitchParameter | — | — | Named | — | 表示ウィンドウなしでブラウザを実行する |
| `-All` | SwitchParameter | — | — | Named | — | 登録されているすべての最新ブラウザで開きます |
| `-Left` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを画面の左側に配置 |
| `-Right` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを画面の右側に配置します |
| `-Top` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを画面の上側に配置する |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | 画面の中央にブラウザウィンドウを配置します |
| `-FullScreen` | SwitchParameter | — | — | Named | — | フルスクリーンモードで開く |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | ブラウザコントロールを非表示にする |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | ブラウザ拡張機能の読み込みを防止する |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | ブラウザのポップアップブロック機能を無効にする |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | フォーカスブラウザのウィンドウを開いた後に |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 開いた後にブラウザウィンドウを前面に設定する |
| `-Maximize` | SwitchParameter | — | — | Named | — | 位置決め後にウィンドウを最大化する |
| `-SetRestored` | SwitchParameter | — | — | Named | — | 位置決め後にウィンドウを通常の状態に戻す |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShellウィンドウのフォーカスを復元 |
| `-NewWindow` | SwitchParameter | — | — | Named | — | 既存のブラウザウィンドウを再利用せず、代わりに新しいウィンドウを作成する |
| `-PassThru` | SwitchParameter | — | — | Named | — | ブラウザプロセスの [System.Diagnostics.Process] オブジェクトを返します |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | ウェブブラウザを開かずに、URLを返してください |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | After opening webbrowser, return the url |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | ブラウザにキーストロークを送信する際に制御文字をエスケープします |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | キーストローク送信後、PowerShellにキーボードフォーカスが戻らないようにする |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | キー送信時に通常のEnterの代わりにShift+Enterを使用して改行する |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 異なるキーシーケンスを送信する間の遅延（ミリ秒単位） |
| `-NoBorders` | SwitchParameter | — | — | Named | — | ウィンドウの境界線を削除します |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | セッションに保存されたAI設定の代替オプションをクリア |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 設定はセッションに影響を与えず、永続的な設定のみに保存します。 |
| `-SideBySide` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを並べて表示 |

## Examples

### Open-IMDBQuery -Queries "The Matrix" -Monitor 0

```powershell
Open-IMDBQuery -Queries "The Matrix" -Monitor 0
```

デフォルトのモニターで「The Matrix」のIMDB検索を開きます。

### imdb "The Matrix" -m 0

```powershell
imdb "The Matrix" -m 0
```

マトリックス のIMDB検索をエイリアスと短縮パラメータを使用して開きます。

### "Inception", "Interstellar" | Open-IMDBQuery -Language "French" -Chrome

```powershell
"Inception", "Interstellar" | Open-IMDBQuery -Language "French" -Chrome
```

ChromeでIMDBで複数の映画をフランス語の結果で検索します。

### Open-IMDBQuery -Queries "Tom Hanks" -FullScreen -RestoreFocus

```powershell
Open-IMDBQuery -Queries "Tom Hanks" -FullScreen -RestoreFocus
```

IMDBでトム・ハンクスをフルスクリーンモードで検索した後、フォーカスをPowerShellに戻します。

## Related Links

- [Open-IMDBQuery on GitHub](https://github.com/genXdev/genXdev)
