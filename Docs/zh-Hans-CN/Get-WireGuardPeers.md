# Get-WireGuardPeers

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> 获取系统上所有 WireGuard VPN 对等体的配置信息。

## Description

此函数用于检索在Docker容器中运行的服务器上配置的所有WireGuard VPN对端的综合信息。它提供详细信息，包括对端名称、公钥、允许的IP地址、连接端点、握手状态、数据传输统计信息以及当前连接状态。该函数可与父函数协同操作，也可独立管理Docker容器的初始化。

## Syntax

```powershell
Get-WireGuardPeers [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [[-Width] <Int32>] [[-Height] <Int32>] [[-Left] <Int32>] [[-Right] <Int32>] [[-Bottom] <Int32>] [[-SendKeyDelayMilliSeconds] <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | 跳过 Docker 初始化（当已由父函数调用时使用） |
| `-Force` | SwitchParameter | — | — | Named | — | 强制重建 Docker 容器并移除现有数据 |
| `-ContainerName` | String | — | — | 0 | `'wireguard'` | Docker容器的名称 |
| `-VolumeName` | String | — | — | 1 | `'wireguard_data'` | 用于持久化存储的Docker卷名称 |
| `-ServicePort` | Int32 | — | — | 2 | `51839` | WireGuard 服务的端口号 |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | 服务健康检查的最大等待时间（秒） |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | 健康检查尝试之间的间隔（秒） |
| `-ImageName` | String | — | — | 5 | `'linuxserver/wireguard'` | 要使用的自定义 Docker 镜像名称 |
| `-PUID` | String | — | — | 6 | `'1000'` | 容器内权限的用户ID |
| `-PGID` | String | — | — | 7 | `'1000'` | 容器中用于权限的组ID |
| `-TimeZone` | String | — | — | 8 | `'Etc/UTC'` | 容器使用的时区 |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | 运行 WireGuard 时显示 Docker 窗口 |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Remove window borders for Docker window |
| `-Width` | Int32 | — | — | 9 | `-1` | 设置Docker窗口的宽度 |
| `-Height` | Int32 | — | — | 10 | `-1` | 设置Docker窗口的高度 |
| `-Left` | Int32 | — | — | 11 | — | 设置 Docker 窗口的左侧位置 |
| `-Right` | Int32 | — | — | 12 | — | 设置 Docker 窗口的右侧位置 |
| `-Bottom` | Int32 | — | — | 13 | — | 设置Docker窗口的底部位置 |
| `-Centered` | SwitchParameter | — | — | Named | — | 将 Docker 窗口居中显示在屏幕上 |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | 以全屏模式运行 Docker 窗口 |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | 在运行 Docker 后恢复对先前窗口的焦点 |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Show Docker window side by side with other windows |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 在启动后聚焦 Docker 窗口 |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Set the Docker window as foreground window |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | 启动后向 Docker 窗口发送 Escape 键 |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | 启动后保持键盘焦点在 Docker 窗口中 |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | 向Docker窗口发送按键时使用Shift+Enter |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | 14 | — | 向Docker窗口发送按键之间的延迟（毫秒） |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 仅在 Docker 窗口中使用会话 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 在运行之前清除 Docker 窗口的会话 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 跳过 Docker 窗口的会话 |

## Examples

### Get-WireGuardPeers

```powershell
Get-WireGuardPeers
```

### Get-WireGuardPeers -NoDockerInitialize -ContainerName "custom_wireguard" `                    -ServicePort 55555

```powershell
Get-WireGuardPeers -NoDockerInitialize -ContainerName "custom_wireguard" `
                   -ServicePort 55555
```

## Related Links

- [Get-WireGuardPeers on GitHub](https://github.com/genXdev/genXdev)
