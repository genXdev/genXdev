# Add-WireGuardPeer

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> 新しいWireGuard VPNピア（クライアント）設定をサーバーに追加します。

## Description

この関数は、Dockerコンテナ内で動作するWireGuard VPNサーバーに新しいピアを追加します。一意のIPアドレスを持つ新しいクライアント設定を生成し、必要な暗号鍵を作成し、設定の詳細を返します。この関数は、オプションで設定をファイルに保存したり、モバイルデバイスでの簡単なセットアップのためにQRコードを生成したりできます。ピア名の検証、重複の確認、およびさまざまなエラー条件を適切に処理します。

## Syntax

```powershell
Add-WireGuardPeer -PeerName <String> [[-AllowedIPs] <String>] [[-DNS] <String>] [[-OutputPath] <String>] [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [-Bottom <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-Height <Int32>] [-Left <Int32>] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-Right <Int32>] [-SaveConfig] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowQRCode] [-ShowWindow] [-SideBySide] [-SkipSession] [-Width <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PeerName` | String | ✅ | — | 0 | — | ピアの一意な名前 |
| `-AllowedIPs` | String | — | — | 1 | `'0.0.0.0/0, ::/0'` | VPN 経由でルーティングされる IP 範囲 |
| `-DNS` | String | — | — | 2 | `'1.1.1.1, 1.0.0.1'` | このピアで使用するDNSサーバー |
| `-OutputPath` | String | — | — | 3 | `"$env:USERPROFILE\WireGuardConfigs"` | ピア設定ファイルを保存するパス |
| `-ContainerName` | String | — | — | 4 | `'wireguard'` | Dockerコンテナの名前 |
| `-VolumeName` | String | — | — | 5 | `'wireguard_data'` | 永続ストレージ用のDockerボリュームの名前 |
| `-ServicePort` | Int32 | — | — | 6 | `51839` | WireGuardサービスのポート番号 |
| `-HealthCheckTimeout` | Int32 | — | — | 7 | `60` | サービスヘルスチェックを待機する最大時間（秒） |
| `-HealthCheckInterval` | Int32 | — | — | 8 | `3` | ヘルスチェック試行間の間隔（秒） |
| `-ImageName` | String | — | — | 9 | `'linuxserver/wireguard'` | 使用するカスタムDockerイメージ名 |
| `-PUID` | String | — | — | 10 | `'1000'` | コンテナ内の権限のためのユーザーID |
| `-PGID` | String | — | — | 11 | `'1000'` | コンテナ内の権限のグループID |
| `-TimeZone` | String | — | — | 12 | `'Etc/UTC'` | コンテナに使用するタイムゾーン |
| `-SaveConfig` | SwitchParameter | — | — | Named | — | ピア設定をファイルに保存する |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | サービスの初期化時にWireGuardウィンドウを表示する |
| `-NoBorders` | SwitchParameter | — | — | Named | — | サービス初期化時にウィンドウ枠を削除する |
| `-Width` | Int32 | — | — | Named | `-1` | サービスの初期化時にウィンドウ幅を設定する |
| `-Height` | Int32 | — | — | Named | `-1` | サービスの初期化時にウィンドウの高さを設定する |
| `-Left` | Int32 | — | — | Named | — | サービスの初期化時にウィンドウの左位置を設定する |
| `-Right` | Int32 | — | — | Named | — | サービス初期化時にウィンドウの正しい位置を設定する |
| `-Bottom` | Int32 | — | — | Named | — | サービス初期化時にウィンドウ下部位置を設定する |
| `-Centered` | SwitchParameter | — | — | Named | — | サービス初期化時にウィンドウを中央に配置する |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | 全画面モードでサービスを開始します |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | サービス初期化後、ウィンドウにフォーカスを戻す |
| `-SideBySide` | SwitchParameter | — | — | Named | — | サービスの初期化時にウィンドウを並べて表示する |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | サービスの初期化後にウィンドウをフォーカスする |
| `-SetForeground` | SwitchParameter | — | — | Named | — | サービスの初期化後にウィンドウを前面に表示する |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | サービスの初期化後、ウィンドウにエスケープキーを送信します。 |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | サービス初期化後にキーを送信する際にキーボードフォーカスを保持する |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | サービス初期化後、キー送信時は Shift+Enter を使用してください。 |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | サービス初期化後にキー送信時の遅延（ミリ秒） |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | セッションはWireGuardサービスのみに使用してください |
| `-ClearSession` | SwitchParameter | — | — | Named | — | サービス初期化時にセッションをクリアする |
| `-SkipSession` | SwitchParameter | — | — | Named | — | サービスを初期化するときにセッションをスキップする |
| `-ShowQRCode` | SwitchParameter | — | — | Named | — | モバイルの簡単設定用QRコードを生成する |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker の初期化をスキップ（親関数から既に呼び出されている場合に使用） |
| `-Force` | SwitchParameter | — | — | Named | — | Dockerコンテナを強制再構築し、既存データを削除 |

## Examples

### Add-WireGuardPeer -PeerName "MyPhone" -AllowedIPs "0.0.0.0/0, ::/0" `     -DNS "1.1.1.1, 1.0.0.1" -SaveConfig -OutputPath `     "$env:USERPROFILE\WireGuardConfigs" -ShowQRCode -ContainerName "wireguard" `     -VolumeName "wireguard_data" -ServicePort 51839 -HealthCheckTimeout 60 `     -HealthCheckInterval 3 -ImageName "linuxserver/wireguard" -PUID "1000" `     -PGID "1000" -TimeZone "Etc/UTC"

```powershell
Add-WireGuardPeer -PeerName "MyPhone" -AllowedIPs "0.0.0.0/0, ::/0" `
    -DNS "1.1.1.1, 1.0.0.1" -SaveConfig -OutputPath `
    "$env:USERPROFILE\WireGuardConfigs" -ShowQRCode -ContainerName "wireguard" `
    -VolumeName "wireguard_data" -ServicePort 51839 -HealthCheckTimeout 60 `
    -HealthCheckInterval 3 -ImageName "linuxserver/wireguard" -PUID "1000" `
    -PGID "1000" -TimeZone "Etc/UTC"
```

### Add-WireGuardPeer "MyTablet" -ShowQRCode

```powershell
Add-WireGuardPeer "MyTablet" -ShowQRCode
```

## Related Links

- [Add-WireGuardPeer on GitHub](https://github.com/genXdev/genXdev)
