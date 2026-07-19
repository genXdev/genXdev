# Reset-WireGuardConfiguration

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> WireGuard VPN サーバーの設定をリセットし、すべてのピアを削除します。

## Description

この関数は、Dockerコンテナで実行されているWireGuard VPNサーバーの設定をリセットし、すべてのピアを削除して新しいサーバー設定を生成します。これは元に戻せない破壊的な操作であり、すべてのピア設定が完全に削除されます。この関数は、WireGuardサービスを停止し、すべてのピアディレクトリと設定ファイルを削除し、サーバーキーを削除し、コンテナを再起動し、新しい設定が生成されたことを確認します。

## Syntax

```powershell
Reset-WireGuardConfiguration [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [-Force] [-NoDockerInitialize] [<CommonParameters>]
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
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker の初期化をスキップ（親関数から既に呼び出されている場合に使用） |
| `-Force` | SwitchParameter | — | — | Named | — | 確認なしで強制リセット |

## Examples

### Reset-WireGuardConfiguration

```powershell
Reset-WireGuardConfiguration
```

WireGuardの設定をデフォルトにリセットし、続行する前に確認を求めます。

### Reset-WireGuardConfiguration -Force -ContainerName "my-wireguard"

```powershell
Reset-WireGuardConfiguration -Force -ContainerName "my-wireguard"
```

確認プロンプトなしでカスタムコンテナ名のWireGuard設定をリセットします。

## Related Links

- [Reset-WireGuardConfiguration on GitHub](https://github.com/genXdev/genXdev)
