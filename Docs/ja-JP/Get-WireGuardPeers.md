# Get-WireGuardPeers

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-WireGuardPeers [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [[-Width] <Int32>] [[-Height] <Int32>] [[-Left] <Int32>] [[-Right] <Int32>] [[-Bottom] <Int32>] [[-SendKeyDelayMilliSeconds] <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker の初期化をスキップ（親関数から既に呼び出されている場合に使用） |
| `-Force` | SwitchParameter | — | — | Named | — | Dockerコンテナを強制再構築し、既存データを削除 |
| `-ContainerName` | String | — | — | 0 | `'wireguard'` | Dockerコンテナの名前 |
| `-VolumeName` | String | — | — | 1 | `'wireguard_data'` | 永続ストレージ用のDockerボリュームの名前 |
| `-ServicePort` | Int32 | — | — | 2 | `51839` | WireGuardサービスのポート番号 |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | サービスヘルスチェックを待機する最大時間（秒） |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | ヘルスチェック試行間の間隔（秒） |
| `-ImageName` | String | — | — | 5 | `'linuxserver/wireguard'` | 使用するカスタムDockerイメージ名 |
| `-PUID` | String | — | — | 6 | `'1000'` | コンテナ内の権限のためのユーザーID |
| `-PGID` | String | — | — | 7 | `'1000'` | コンテナ内の権限のグループID |
| `-TimeZone` | String | — | — | 8 | `'Etc/UTC'` | コンテナに使用するタイムゾーン |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Docker で WireGuard を実行するときのウィンドウを表示する |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Docker ウィンドウの枠を削除します |
| `-Width` | Int32 | — | — | 9 | `-1` | Docker ウィンドウの幅を設定する |
| `-Height` | Int32 | — | — | 10 | `-1` | Docker ウィンドウの高さを設定する |
| `-Left` | Int32 | — | — | 11 | — | Docker ウィンドウの左位置を設定する |
| `-Right` | Int32 | — | — | 12 | — | Docker ウィンドウの右側の位置を設定する |
| `-Bottom` | Int32 | — | — | 13 | — | Dockerウィンドウの下端の位置を設定する |
| `-Centered` | SwitchParameter | — | — | Named | — | Dockerウィンドウを画面の中央に配置する |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Dockerウィンドウを全画面モードで実行する |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Dockerを実行した後、前のウィンドウにフォーカスを戻す |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Dockerウィンドウを他のウィンドウと並べて表示 |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 起動後にDockerウィンドウにフォーカスする |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Docker ウィンドウをフォアグラウンド ウィンドウとして設定する |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | 起動後にDockerウィンドウにEscapeキーを送信 |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | 起動後にDockerウィンドウのキーボードフォーカスを保持する |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Dockerウインドウにキーを送信する際には、Shift+Enterを使用してください |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | 14 | — | Docker ウィンドウにキーを送信する間の遅延（ミリ秒） |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Docker ウィンドウでのみセッションを使用する |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Docker ウィンドウを実行する前にセッションをクリアしてください |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Dockerウィンドウのセッションをスキップ |

## Related Links

- [Get-WireGuardPeers on GitHub](https://github.com/genXdev/genXdev)
