# Open-YoutubeQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `youtube

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Open-YoutubeQuery -Queries <String[]> [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 実行するクエリ。 |
| `-Language` | String | — | — | 2 | — | 検索結果の表示言語 |
| `-Private` | SwitchParameter | — | — | Named | — | シークレットモードで開く |
| `-Force` | SwitchParameter | — | — | Named | — | 必要に応じて既存のブラウザを停止し、デバッグポートを強制的に有効にします |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge で開く |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome で開く |
| `-Chromium` | SwitchParameter | — | — | Named | — | デフォルトのブラウザに応じて、Microsoft EdgeまたはGoogle Chromeで開きます |
| `-Firefox` | SwitchParameter | — | — | Named | — | Firefox で開く |
| `-All` | SwitchParameter | — | — | Named | — | 登録されているすべての最新ブラウザで開きます |
| `-Monitor` | Int32 | — | — | Named | `-1` | 使用するモニター、0=デフォルト、-1=破棄、-2=設定済みセカンダリモニター、デフォルトは-1、位置決めなし |
| `-FullScreen` | SwitchParameter | — | — | Named | — | フルスクリーンモードで開く |
| `-Width` | Int32 | — | — | Named | `-1` | ウェブブラウザウィンドウの初期幅 |
| `-Height` | Int32 | — | — | Named | `-1` | Webブラウザウィンドウの初期の高さ |
| `-X` | Int32 | — | — | Named | `-999999` | ウェブブラウザウィンドウの初期X位置 |
| `-Y` | Int32 | — | — | Named | `-999999` | ウェブブラウザウィンドウの初期Y位置 |
| `-Left` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを画面の左側に配置 |
| `-Right` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを画面の右側に配置します |
| `-Top` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを画面の上側に配置する |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | 画面の中央にブラウザウィンドウを配置します |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | ブラウザコントロールを非表示にする |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | ブラウザ拡張機能の読み込みを防止する |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | ポップアップブロッカーを無効にする |
| `-AcceptLang` | String | — | — | Named | — | ブラウザのaccept-lang HTTPヘッダーを設定する |
| `-KeysToSend` | String[] | — | — | Named | — | ブラウザウィンドウに送信するキーストローク。詳細については、コマンドレット GenXdev\Send-Key のドキュメントを参照してください。 |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | フォーカスブラウザのウィンドウを開いた後に |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 開いた後にブラウザウィンドウを前面に設定する |
| `-Maximize` | SwitchParameter | — | — | Named | — | 位置決め後にウィンドウを最大化する |
| `-SetRestored` | SwitchParameter | — | — | Named | — | 位置決め後にウィンドウを通常の状態に戻す |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShellウィンドウのフォーカスを復元 |
| `-NewWindow` | SwitchParameter | — | — | Named | — | 既存のブラウザウィンドウを再利用せず、代わりに新しいウィンドウを作成する |
| `-PassThru` | SwitchParameter | — | — | Named | — | ブラウザプロセスの [System.Diagnostics.Process] オブジェクトを返します |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | ウェブブラウザを開かずに、URLを返してください |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | After opening webbrowser, return the url |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | キー送信時の制御文字をエスケープする |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | キー送信後、PowerShellにキーボードフォーカスが戻らないようにする |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | 改行のために通常のEnterではなくShift+Enterを送信する |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 異なるキーシーケンスを送信する間の遅延（ミリ秒単位） |
| `-NoBorders` | SwitchParameter | — | — | Named | — | ブラウザウィンドウの境界線を削除します。 |
| `-SideBySide` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを、PowerShellとは別のモニターで全画面表示にするか、同じモニターでPowerShellと並べて表示します。 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | セッションに保存された代替設定をAIの選択肢に使用します。 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | セッションに保存されたAI設定の代替オプションをクリアします。 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 設定は永続的なプリファレンスにのみ保存し、セッションには影響を与えないでください。 |

## Related Links

- [Open-YoutubeQuery on GitHub](https://github.com/genXdev/genXdev)
