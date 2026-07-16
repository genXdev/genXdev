# Set-WindowPositionForSecondary

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `wps

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Set-WindowPositionForSecondary [[-Process] <Diagnostics.Process[]>] [-Bottom] [-Centered] [-ClearSession] [-FocusWindow] [-FullScreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NoBorders] [-PassThru] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Process` | Diagnostics.Process[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | ウィンドウを配置するプロセス |
| `-Monitor` | Int32 | — | — | Named | `-2` | 使用するモニター、0=デフォルト、-1=破棄、-2=設定済み |
| `-Width` | Int32 | — | — | Named | `-1` | ウィンドウの初期幅 |
| `-Height` | Int32 | — | — | Named | `-1` | ウィンドウの初期高さ |
| `-X` | Int32 | — | — | Named | `-999999` | ウィンドウの初期X位置 |
| `-Y` | Int32 | — | — | Named | `-999999` | ウィンドウの初期Y位置 |
| `-Left` | SwitchParameter | — | — | Named | — | ウィンドウを画面の左側に配置します |
| `-Right` | SwitchParameter | — | — | Named | — | ウィンドウを画面の右側に配置します |
| `-Top` | SwitchParameter | — | — | Named | — | ウィンドウを画面の上側に配置する |
| `-Bottom` | SwitchParameter | — | — | Named | — | ウィンドウを画面の下端に配置する |
| `-Centered` | SwitchParameter | — | — | Named | — | ウィンドウを画面の中央に配置 |
| `-FullScreen` | SwitchParameter | — | — | Named | — | ウィンドウにF11を送信します |
| `-NoBorders` | SwitchParameter | — | — | Named | — | ウィンドウの境界線を削除します |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShellウィンドウのフォーカスを復元 |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | フォーカス後にウィンドウを前面に表示 |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 位置を設定した後にウィンドウを前面に表示 |
| `-Maximize` | SwitchParameter | — | — | Named | — | 位置決め後にウィンドウを最大化する |
| `-SetRestored` | SwitchParameter | — | — | Named | — | 位置決め後にウィンドウを通常の状態に戻す |
| `-KeysToSend` | String[] | — | — | Named | — | ウィンドウを配置した後に送信するキーストローク |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | キー送信時に制御文字と修飾キーをエスケープしてください |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | キー送信時にターゲットウィンドウへのキーボードフォーカスを保持する |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | キー送信時に Enter の代わりに Shift+Enter を使用する |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | キー送信時における異なる入力文字列間の遅延（ミリ秒） |
| `-PassThru` | SwitchParameter | — | — | Named | — | 位置決め後のプロセスオブジェクトを返します |
| `-SideBySide` | SwitchParameter | — | — | Named | — | 同じモニターでPowerShellとウィンドウを横に並べて配置する |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | セッションに保存されたAI設定の代替オプションをクリア |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 設定はセッションに影響を与えず、永続的な設定のみに保存します。 |

## Related Links

- [Set-WindowPositionForSecondary on GitHub](https://github.com/genXdev/genXdev)
