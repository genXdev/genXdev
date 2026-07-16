# Reset-WireGuardConfiguration

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Reset-WireGuardConfiguration [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [-Force] [-NoDockerInitialize] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ContainerName` | String | — | — | 0 | `'wireguard'` | Docker容器的名称 |
| `-VolumeName` | String | — | — | 1 | `'wireguard_data'` | 用于持久化存储的Docker卷名称 |
| `-ServicePort` | Int32 | — | — | 2 | `51839` | WireGuard 服务的端口号 |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | 服务健康检查的最大等待时间（秒） |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | 健康检查尝试之间的间隔（秒） |
| `-ImageName` | String | — | — | 5 | `'linuxserver/wireguard'` | 要使用的自定义 Docker 镜像名称 |
| `-PUID` | String | — | — | 6 | `'1000'` | 容器内权限的用户ID |
| `-PGID` | String | — | — | 7 | `'1000'` | 容器中用于权限的组ID |
| `-TimeZone` | String | — | — | 8 | `'Etc/UTC'` | 容器使用的时区 |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | 跳过 Docker 初始化（当已由父函数调用时使用） |
| `-Force` | SwitchParameter | — | — | Named | — | 强制重置，无需确认 |

## Related Links

- [Reset-WireGuardConfiguration on GitHub](https://github.com/genXdev/genXdev)
