# Reset-WireGuardConfiguration

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> 重置 WireGuard VPN 服务器配置，移除所有对等端。

## Description

该函数重置运行在Docker容器中的WireGuard VPN服务器配置，通过移除所有对等端并生成全新的服务器配置。这是不可逆的破坏性操作，会永久删除所有对等端配置。函数将停止WireGuard服务，删除所有对等端目录及配置文件，移除服务器密钥，重启容器，并验证是否生成了新配置。

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

## Examples

### Reset-WireGuardConfiguration

```powershell
Reset-WireGuardConfiguration
```

将 WireGuard 配置重置为默认设置，并在继续前请求确认。

### Reset-WireGuardConfiguration -Force -ContainerName "my-wireguard"

```powershell
Reset-WireGuardConfiguration -Force -ContainerName "my-wireguard"
```

重置指定自定义容器名称的 WireGuard 配置，无需确认提示。

## Related Links

- [Reset-WireGuardConfiguration on GitHub](https://github.com/genXdev/genXdev)
