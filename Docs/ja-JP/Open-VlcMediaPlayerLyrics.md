# Open-VlcMediaPlayerLyrics

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlclyrics

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Open-VlcMediaPlayerLyrics [[-Queries] <String[]>] [[-EndPoint] <String>] [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowWindow] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) 🌐 Remaining | 0 | — | トラックを検索するための検索語 |
| `-EndPoint` | String | — | — | 1 | `'Google'` | クエリを呼び出すためのエンドポイント |
| `-Language` | String | — | — | 2 | — | 検索結果の表示言語 |
| `-Monitor` | Int32 | — | — | Named | `-1` | 使用するモニター、0=デフォルト、-1=破棄、-2=設定済みセカンダリモニター、デフォルトは-1、位置決めなし |
| `-Width` | Int32 | — | — | Named | `-1` | ウェブブラウザウィンドウの初期幅 |
| `-Height` | Int32 | — | — | Named | `-1` | Webブラウザウィンドウの初期の高さ |
| `-X` | Int32 | — | — | Named | `-999999` | ウェブブラウザウィンドウの初期X位置 |
| `-Y` | Int32 | — | — | Named | `-999999` | ウェブブラウザウィンドウの初期Y位置 |
| `-AcceptLang` | String | — | — | Named | `$null` | ブラウザのaccept-lang HTTPヘッダーを設定する |
| `-KeysToSend` | String[] | — | — | Named | — | ブラウザウィンドウに送信するキーストローク。詳細については、コマンドレット GenXdev\Send-Key のドキュメントを参照してください。 |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 異なるキーシーケンスを送信する間の遅延（ミリ秒単位） |
| `-Private` | SwitchParameter | — | — | Named | — | シークレットモードで開く |
| `-Force` | SwitchParameter | — | — | Named | — | 必要に応じて既存のブラウザを停止し、デバッグポートを強制的に有効にします |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge で開く |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome で開く |
| `-Chromium` | SwitchParameter | — | — | Named | — | デフォルトのブラウザに応じて、Microsoft EdgeまたはGoogle Chromeで開きます |
| `-Firefox` | SwitchParameter | — | — | Named | — | Firefox で開く |
| `-All` | SwitchParameter | — | — | Named | — | 登録されているすべての最新ブラウザで開きます |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | フルスクリーンモードで開く |
| `-Left` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを画面の左側に配置 |
| `-Right` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを画面の右側に配置します |
| `-Top` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを画面の上側に配置する |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | 画面の中央にブラウザウィンドウを配置します |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | ブラウザコントロールを非表示にする |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | ブラウザ拡張機能の読み込みを防止する |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | ポップアップブロッカーを無効にする |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | キー送信時の制御文字をエスケープする |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | キー送信後、PowerShellにキーボードフォーカスが戻らないようにする |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | 改行のために通常のEnterではなくShift+Enterを送信する |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | フォーカスブラウザのウィンドウを開いた後に |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 開いた後にブラウザウィンドウを前面に設定する |
| `-Maximize` | SwitchParameter | — | — | Named | — | 位置決め後にウィンドウを最大化する |
| `-SetRestored` | SwitchParameter | — | — | Named | — | 位置決め後にウィンドウを通常の状態に戻す |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShellウィンドウのフォーカスを復元 |
| `-NewWindow` | SwitchParameter | — | — | Named | — | 既存のブラウザウィンドウを再利用せず、代わりに新しいウィンドウを作成する |
| `-PassThru` | SwitchParameter | — | — | Named | — | ブラウザプロセスの [System.Diagnostics.Process] オブジェクトを返します |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | ウェブブラウザを開かずに、URLを返してください |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | After opening webbrowser, return the url |
| `-NoBorders` | SwitchParameter | — | — | Named | — | ブラウザウィンドウからウィンドウ枠を削除します |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | ブラウザを閉じた後に保持されないセッションを使用する |
| `-ClearSession` | SwitchParameter | — | — | Named | — | ブラウザを開く前にブラウザのセッションデータをクリアする |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 既存のブラウザセッションを使用しないでください |
| `-SideBySide` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを並べて表示 |

## Related Links

- [Open-VlcMediaPlayerLyrics on GitHub](https://github.com/genXdev/genXdev)
