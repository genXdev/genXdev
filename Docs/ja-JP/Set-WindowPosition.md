# Set-WindowPosition

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `wp

## Synopsis

> 明示的な位置指定パラメータが指定された場合、ウィンドウの位置とサイズを変更します。

## Description

位置パラメータが指定された場合、ウィンドウの位置とサイズを精密に制御します。マルチモニター、枠の除去、左右分割、上下分割、中央配置などの様々なプリセット位置に対応しています。ウィンドウは座標で配置するか、事前定義されたレイアウトを使用して配置できます。位置パラメータがない場合、関数はウィンドウに対して何も行いません。

## Syntax

```powershell
Set-WindowPosition [[-ProcessName] <String>] [<CommonParameters>]

Set-WindowPosition [-Process <Diagnostics.Process>] [<CommonParameters>]

Set-WindowPosition [-WindowHelper <GenXdev.Helpers.WindowObj[]>] [<CommonParameters>]

Set-WindowPosition [-Bottom] [-Centered] [-ClearSession] [-FocusWindow] [-Fullscreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Minimize] [-Monitor <Int32>] [-NoBorders] [-OnlyOutputCoords] [-PassThru] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ProcessName` | String | — | ✅ (ByValue, ByPropertyName) | 0 | — | 位置を指定するウィンドウのプロセス名 *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Process` | Diagnostics.Process | — | ✅ (ByValue, ByPropertyName) | Named | — | ウィンドウを配置するプロセス *(Parameter set: )* |
| `-WindowHelper` | GenXdev.Helpers.WindowObj[] | — | ✅ (ByValue, ByPropertyName) | Named | — | Get-Window ヘルパーオブジェクト（ウィンドウを直接操作するため） *(Parameter set: )* |
| `-Monitor` | Int32 | — | — | Named | `-1` | モニター選択: 0=プライマリ、1+=特定モニター、-1=現在、-2=セカンダリ |
| `-NoBorders` | SwitchParameter | — | — | Named | — | ウィンドウの境界線を削除します |
| `-Width` | Int32 | — | — | Named | `-1` | ピクセル単位のウィンドウ幅 |
| `-Height` | Int32 | — | — | Named | `-999999` | ウィンドウの高さ（ピクセル） |
| `-X` | Int32 | — | — | Named | `-999999` | ウィンドウの水平位置（ピクセル単位） |
| `-Y` | Int32 | — | — | Named | `-999999` | ウィンドウの垂直位置（ピクセル単位） |
| `-Left` | SwitchParameter | — | — | Named | — | ウィンドウを画面の左側に配置します |
| `-Right` | SwitchParameter | — | — | Named | — | ウィンドウを画面の右側に配置します |
| `-Top` | SwitchParameter | — | — | Named | — | ウィンドウを画面の上側に配置する |
| `-Bottom` | SwitchParameter | — | — | Named | — | ウィンドウを画面の下端に配置する |
| `-Centered` | SwitchParameter | — | — | Named | — | ウィンドウを画面の中央に配置 |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | ウィンドウを最大化する |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShellウィンドウのフォーカスを復元 |
| `-PassThru` | SwitchParameter | — | — | Named | — | 各プロセスのウィンドウヘルパーを返します |
| `-SideBySide` | SwitchParameter | — | — | Named | — | ウィンドウをPowerShellとは別のモニターで全画面表示にするか、同じモニターでPowerShellと並べて表示するかのどちらかになります。 |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 開いた後にウィンドウにフォーカスする |
| `-SetForeground` | SwitchParameter | — | — | Named | — | ウィンドウを開いた後、最前面に設定する |
| `-Minimize` | SwitchParameter | — | — | Named | — | 位置指定後にウィンドウを最小化する |
| `-Maximize` | SwitchParameter | — | — | Named | — | 位置決め後にウィンドウを最大化する |
| `-SetRestored` | SwitchParameter | — | — | Named | — | 位置決め後にウィンドウを通常の状態に戻す |
| `-KeysToSend` | String[] | — | — | Named | — | ウィンドウに送信するキーストローク。詳細については、コマンドレット GenXdev\Send-Key のドキュメントを参照してください。 |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | キー送信時に制御文字と修飾キーをエスケープしてください |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | キー送信時にターゲットウィンドウへのキーボードフォーカスを保持する |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | キー送信時に Enter の代わりに Shift+Enter を使用する |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | キー送信時における異なる入力文字列間の遅延（ミリ秒） |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | セッションに保存されたAI設定の代替オプションをクリア |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 設定はセッションに影響を与えず、永続的な設定のみに保存します。 |
| `-OnlyOutputCoords` | SwitchParameter | — | — | Named | — | Only output the calculated coordinates and size without actually positioning the window |

## Examples

### Set-WindowPosition -Centered -Monitor 0 -NoBorders Position PowerShell window centered on primary monitor with no borders

```powershell
Set-WindowPosition -Centered -Monitor 0 -NoBorders
Position PowerShell window centered on primary monitor with no borders
```

### Get-Process notepad,calc | wp -m 1 -l,-r Split notepad and calc side by side on second monitor using aliases

```powershell
Get-Process notepad,calc | wp -m 1 -l,-r
Split notepad and calc side by side on second monitor using aliases
```

### Set-WindowPosition -ProcessName notepad Does nothing - no positioning parameters specified

```powershell
Set-WindowPosition -ProcessName notepad
Does nothing - no positioning parameters specified
```

### Set-WindowPosition -ProcessName notepad -KeysToSend "Hello World" Sends keystrokes to notepad window without repositioning it

```powershell
Set-WindowPosition -ProcessName notepad -KeysToSend "Hello World"
Sends keystrokes to notepad window without repositioning it
```

### Set-WindowPosition -ProcessName notepad -Left -Monitor 1 -OnlyOutputCoords Returns the calculated coordinates where notepad would be placed on the left side of monitor 1 without actually moving the window

```powershell
Set-WindowPosition -ProcessName notepad -Left -Monitor 1 -OnlyOutputCoords
Returns the calculated coordinates where notepad would be placed on the left
side of monitor 1 without actually moving the window
```

## Related Links

- [Set-WindowPosition on GitHub](https://github.com/genXdev/genXdev)
