# Get-WireGuardStatus

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> WireGuard VPNサーバーの詳細なステータス情報を取得します。

## Description

この関数は、Dockerコンテナで実行されているWireGuard VPNサーバーの詳細なステータス情報（インターフェースの詳細、リスニングポート、接続中のピア、サーバーの健全性など）を取得します。サーバーステータス、ピア数、稼働時間、ネットワーク設定の詳細など、WireGuardサービスに関する包括的な情報を提供します。

## Syntax

```powershell
Get-WireGuardStatus [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [[-Width] <Int32>] [[-Height] <Int32>] [[-Left] <Int32>] [[-Right] <Int32>] [[-Bottom] <Int32>] [[-SendKeyDelayMilliSeconds] <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [<CommonParameters>]
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
| `-ShowWindow` | SwitchParameter | — | — | Named | — | コンテナ実行時にウィンドウを表示（パススルー） |
| `-NoBorders` | SwitchParameter | — | — | Named | — | ウィンドウの枠を削除（パススルー） |
| `-Width` | Int32 | — | — | 9 | `-1` | 文字またはピクセル単位のウィンドウ幅（通過） |
| `-Height` | Int32 | — | — | 10 | `-1` | 文字またはピクセル単位のウィンドウの高さ (パススルー) |
| `-Left` | Int32 | — | — | 11 | — | ウィンドウの左位置（パススルー） |
| `-Right` | Int32 | — | — | 12 | — | ウィンドウの右位置（パススルー） |
| `-Bottom` | Int32 | — | — | 13 | — | ウィンドウ下端位置（パススルー） |
| `-Centered` | SwitchParameter | — | — | Named | — | ウィンドウを中央に配置（パススルー） |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | ウィンドウを全画面モードで開く（パススルー） |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | 操作後にウィンドウにフォーカスを戻す（パススルー） |
| `-SideBySide` | SwitchParameter | — | — | Named | — | サイドバイサイドウィンドウを表示（パススルー） |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 開封後にウィンドウにフォーカスする（パススルー） |
| `-SetForeground` | SwitchParameter | — | — | Named | — | ウィンドウを前面に設定（パススルー） |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | ウィンドウにエスケープキーを送信（パススルー） |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | キー送信時にキーボードフォーカスを維持する（パススルー） |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | キー送信（パススルー）にはShift+Enterを使用してください |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | 14 | — | キー送信（パススルー）の間の遅延（ミリ秒） |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | セッションのみのモード（パススルー） |
| `-ClearSession` | SwitchParameter | — | — | Named | — | セッションデータのクリア（パススルー） |
| `-SkipSession` | SwitchParameter | — | — | Named | — | セッション初期化をスキップ（通過） |

## Examples

### Get-WireGuardStatus

```powershell
Get-WireGuardStatus
```

デフォルト設定のWireGuardサーバーのステータスを返します。

### Get-WireGuardStatus -NoDockerInitialize -ContainerName "custom_wireguard"

```powershell
Get-WireGuardStatus -NoDockerInitialize -ContainerName "custom_wireguard"
```

Dockerを初期化せずにカスタムコンテナのステータスを取得します。

## Related Links

- [Get-WireGuardStatus on GitHub](https://github.com/genXdev/genXdev)
