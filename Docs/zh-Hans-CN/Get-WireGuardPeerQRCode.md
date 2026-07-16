# Get-WireGuardPeerQRCode

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-WireGuardPeerQRCode -PeerName <String> [-ContainerName <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-NoDockerInitialize] [-PGID <String>] [-PUID <String>] [-ServicePort <Int32>] [-TimeZone <String>] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PeerName` | String | ✅ | — | 0 | — | 要为哪个对等体生成二维码？ |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | 跳过 Docker 初始化（当已由父函数调用时使用） |
| `-Force` | SwitchParameter | — | — | Named | — | 强制重建 Docker 容器并移除现有数据 |
| `-ContainerName` | String | — | — | Named | `'wireguard'` | Docker容器的名称 |
| `-VolumeName` | String | — | — | Named | `'wireguard_data'` | 用于持久化存储的Docker卷名称 |
| `-ServicePort` | Int32 | — | — | Named | `51839` | WireGuard 服务的端口号 |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | 服务健康检查的最大等待时间（秒） |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | 健康检查尝试之间的间隔（秒） |
| `-ImageName` | String | — | — | Named | `'linuxserver/wireguard'` | 要使用的自定义 Docker 镜像名称 |
| `-PUID` | String | — | — | Named | `'1000'` | 容器内权限的用户ID |
| `-PGID` | String | — | — | Named | `'1000'` | 容器中用于权限的组ID |
| `-TimeZone` | String | — | — | Named | `'Etc/UTC'` | 容器使用的时区 |

## Related Links

- [Get-WireGuardPeerQRCode on GitHub](https://github.com/genXdev/genXdev)
