# EnsureDockerDesktop

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Docker Desktopがインストールされ、コンテナ化操作に利用可能であることを確認します。

## Description

Docker Desktop がシステムにインストールされ、適切に構成されているかを確認します。
見つからない場合は、WinGet を使用して Docker Desktop をインストールし、インストールプロセス全体を自動的に処理します。この関数は、Docker Desktop サービスの起動、デーモンの準備完了確認、および必要に応じた認証要件の処理も管理します。関数には、システムレベルおよびユーザーレベルの Docker インストールの両方に対する包括的なパス管理が含まれています。

## Syntax

```powershell
EnsureDockerDesktop [[-Monitor] <Int32>] [[-Width] <Int32>] [[-Height] <Int32>] [[-X] <Int32>] [[-Y] <Int32>] [[-KeysToSend] <String[]>] [[-SendKeyDelayMilliSeconds] <Int32>] [-Bottom] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-Left] [-NoBorders] [-NoDockerInitialization] [-RestoreFocus] [-Right] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [-Top] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ShowWindow` | SwitchParameter | — | — | Named | — | 初期化中にDocker Desktopウィンドウを表示する |
| `-Monitor` | Int32 | — | — | 0 | `-1` | 使用するモニター、0 = デフォルト、-1 は破棄 |
| `-NoBorders` | SwitchParameter | — | — | Named | — | ウィンドウの境界線を削除します |
| `-Force` | SwitchParameter | — | — | Named | — | Docker Desktop を強制的に再起動します |
| `-Width` | Int32 | — | — | 1 | — | ウィンドウの初期幅 |
| `-Height` | Int32 | — | — | 2 | — | ウィンドウの初期高さ |
| `-X` | Int32 | — | — | 3 | — | ウィンドウの初期X位置 |
| `-Y` | Int32 | — | — | 4 | — | ウィンドウの初期Y位置 |
| `-Left` | SwitchParameter | — | — | Named | — | ウィンドウを画面の左側に配置します |
| `-Right` | SwitchParameter | — | — | Named | — | ウィンドウを画面の右側に配置します |
| `-Top` | SwitchParameter | — | — | Named | — | ウィンドウを画面の上側に配置する |
| `-Bottom` | SwitchParameter | — | — | Named | — | ウィンドウを画面の下端に配置する |
| `-Centered` | SwitchParameter | — | — | Named | — | ウィンドウを画面の中央に配置 |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | ウィンドウを最大化する |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShellウィンドウのフォーカスを復元 |
| `-SideBySide` | SwitchParameter | — | — | Named | — | ウィンドウをPowerShellとは別のモニターで全画面表示にするか、同じモニターでPowerShellと並べて表示するかのどちらかになります。 |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 開いた後にウィンドウにフォーカスする |
| `-SetForeground` | SwitchParameter | — | — | Named | — | ウィンドウを開いた後、最前面に設定する |
| `-KeysToSend` | String[] | — | — | 5 | — | ウィンドウに送信するキーストローク。詳細については、コマンドレット GenXdev\Send-Key のドキュメントを参照してください。 |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | キー送信時に制御文字と修飾キーをエスケープしてください |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | キー送信時にターゲットウィンドウへのキーボードフォーカスを保持する |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | キー送信時に Enter の代わりに Shift+Enter を使用する |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | 6 | — | キー送信時における異なる入力文字列間の遅延（ミリ秒） |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | セッションに保存されたAI設定の代替オプションをクリア |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 設定はセッションに影響を与えず、永続的な設定のみに保存します。 |
| `-NoDockerInitialization` | SwitchParameter | — | — | Named | — | Dockerの初期化をスキップしてすぐに戻る |

## Examples

### EnsureDockerDesktop

```powershell
EnsureDockerDesktop
```

### EnsureDockerDesktop -ShowWindow -Centered -NoBorders

```powershell
EnsureDockerDesktop -ShowWindow -Centered -NoBorders
```

### EnsureDockerDesktop -ShowWindow -Monitor 1 -Left -Width 800 -Height 600

```powershell
EnsureDockerDesktop -ShowWindow -Monitor 1 -Left -Width 800 -Height 600
```

## Related Links

- [EnsureDockerDesktop on GitHub](https://github.com/genXdev/genXdev)
