# EnsureWireGuard

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> Dockerコンテナを介してWireGuard VPNサービスがインストールされ、実行されていることを確認します。

## Description

この関数は、Docker Desktopを使用してWireGuard VPNサービスのセットアップと管理を行います。Docker Desktopが実行中であることを自動的に確認し、最新のWireGuard Dockerイメージをプルし、永続ストレージボリュームを作成し、ヘルスモニタリングや再起動機能を含むコンテナのライフサイクルを管理します。

WireGuardは、最先端の暗号技術を利用した、シンプルで高速かつ最新のVPNです。従来のOpenVPNなどのVPNソリューションと比較して、優れたパフォーマンスとシンプルさを提供し、設定のオーバーヘッドが最小限で、優れたクロスプラットフォーム対応を実現します。

## Syntax

```powershell
EnsureWireGuard [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [-Bottom] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-Height <Int32>] [-Left] [-NoBorders] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [-Width <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ContainerName` | String | — | — | 0 | `'wireguard'` | Dockerコンテナの名前 |
| `-VolumeName` | String | — | — | 1 | `'wireguard_data'` | 永続ストレージ用のDockerボリュームの名前 |
| `-ServicePort` | Int32 | — | — | 2 | `51839` | WireGuardサービスのポート番号 |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | サービスヘルスチェックを待機する最大時間（秒） |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | ヘルスチェック試行間の間隔（秒） |
| `-ImageName` | String | — | — | 5 | `'linuxserver/wireguard'` | 使用するカスタムDockerイメージ名 |
| `-PUID` | String | — | — | 6 | `'1000'` | コンテナ内の権限のためのユーザーID |
| `-PGID` | String | — | — | 7 | `'1000'` | コンテナ内の権限のグループID |
| `-TimeZone` | String | — | — | 8 | `'Etc/UTC'` | コンテナに使用するタイムゾーン |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | 初期化中にDocker Desktopウィンドウを表示する |
| `-NoBorders` | SwitchParameter | — | — | Named | — | ウィンドウの境界線を削除します |
| `-Width` | Int32 | — | — | Named | `-1` | ウィンドウの初期幅 |
| `-Height` | Int32 | — | — | Named | `-1` | ウィンドウの初期高さ |
| `-Left` | SwitchParameter | — | — | Named | — | ウィンドウを画面の左側に配置します |
| `-Right` | SwitchParameter | — | — | Named | — | ウィンドウを画面の右側に配置します |
| `-Bottom` | SwitchParameter | — | — | Named | — | ウィンドウを画面の下端に配置する |
| `-Centered` | SwitchParameter | — | — | Named | — | ウィンドウを画面の中央に配置 |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | ウィンドウを最大化する |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShellウィンドウのフォーカスを復元 |
| `-SideBySide` | SwitchParameter | — | — | Named | — | ウィンドウをPowerShellとは別のモニターで全画面表示にするか、同じモニターでPowerShellと並べて表示するかのどちらかになります。 |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 開いた後にウィンドウにフォーカスする |
| `-SetForeground` | SwitchParameter | — | — | Named | — | ウィンドウを開いた後、最前面に設定する |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | キー送信時に制御文字と修飾キーをエスケープしてください |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | キー送信時にターゲットウィンドウへのキーボードフォーカスを保持する |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | キー送信時に Enter の代わりに Shift+Enter を使用する |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | キー送信時における異なる入力文字列間の遅延（ミリ秒） |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | セッションに保存されたAI設定の代替オプションをクリア |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 設定はセッションに影響を与えず、永続的な設定のみに保存します。 |
| `-Force` | SwitchParameter | — | — | Named | — | Dockerコンテナを強制再構築し、既存データを削除 |

## Examples

### EnsureWireGuard

```powershell
EnsureWireGuard
```

### EnsureWireGuard -ContainerName "my_wireguard" -ServicePort 51821

```powershell
EnsureWireGuard -ContainerName "my_wireguard" -ServicePort 51821
```

### EnsureWireGuard -VolumeName "custom_vpn_data" -HealthCheckTimeout 120

```powershell
EnsureWireGuard -VolumeName "custom_vpn_data" -HealthCheckTimeout 120
```

### EnsureWireGuard -PUID 1001 -PGID 1001 -TimeZone "America/New_York"

```powershell
EnsureWireGuard -PUID 1001 -PGID 1001 -TimeZone "America/New_York"
```

### EnsureWireGuard -Force

```powershell
EnsureWireGuard -Force
```

## Outputs

- `Boolean`

## Related Links

- [EnsureWireGuard on GitHub](https://github.com/genXdev/genXdev)
