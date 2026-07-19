# Get-WireGuardPeerQRCode

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> WireGuard VPN ピア設定用のQRコードを生成します。

## Description

この関数は、モバイルデバイスでスキャンして簡単にセットアップできるWireGuard VPNピア設定のQRコードを生成します。QRコードはコンソールに表示され、スマートフォンやタブレットでWireGuardクライアントを迅速に設定するために使用できます。この関数は、linuxserver/wireguard Dockerコンテナと連携して、ピア設定のQRコードを生成します。

## Syntax

```powershell
Get-WireGuardPeerQRCode -PeerName <String> [-ContainerName <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-NoDockerInitialize] [-PGID <String>] [-PUID <String>] [-ServicePort <Int32>] [-TimeZone <String>] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PeerName` | String | ✅ | — | 0 | — | QRコードを生成するピアの名前 |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker の初期化をスキップ（親関数から既に呼び出されている場合に使用） |
| `-Force` | SwitchParameter | — | — | Named | — | Dockerコンテナを強制再構築し、既存データを削除 |
| `-ContainerName` | String | — | — | Named | `'wireguard'` | Dockerコンテナの名前 |
| `-VolumeName` | String | — | — | Named | `'wireguard_data'` | 永続ストレージ用のDockerボリュームの名前 |
| `-ServicePort` | Int32 | — | — | Named | `51839` | WireGuardサービスのポート番号 |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | サービスヘルスチェックを待機する最大時間（秒） |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | ヘルスチェック試行間の間隔（秒） |
| `-ImageName` | String | — | — | Named | `'linuxserver/wireguard'` | 使用するカスタムDockerイメージ名 |
| `-PUID` | String | — | — | Named | `'1000'` | コンテナ内の権限のためのユーザーID |
| `-PGID` | String | — | — | Named | `'1000'` | コンテナ内の権限のグループID |
| `-TimeZone` | String | — | — | Named | `'Etc/UTC'` | コンテナに使用するタイムゾーン |

## Examples

### Get-WireGuardPeerQRCode -PeerName "MyPhone"

```powershell
Get-WireGuardPeerQRCode -PeerName "MyPhone"
```

### Get-WireGuardPeerQRCode -PeerName "Tablet" -NoDockerInitialize

```powershell
Get-WireGuardPeerQRCode -PeerName "Tablet" -NoDockerInitialize
```

## Related Links

- [Get-WireGuardPeerQRCode on GitHub](https://github.com/genXdev/genXdev)
