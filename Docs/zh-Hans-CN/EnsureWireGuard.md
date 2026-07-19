# EnsureWireGuard

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> 确保 WireGuard VPN 服务已安装并通过 Docker 容器运行。

## Description

该函数利用Docker Desktop设置并管理WireGuard VPN服务。它会自动确保Docker Desktop正在运行，拉取最新的WireGuard Docker镜像，创建持久化存储卷，并管理容器的生命周期，包括健康监控和重启功能。

WireGuard是一种简单、快速且现代的VPN，采用了最先进的加密技术。与OpenVPN等传统VPN解决方案相比，它性能更优、配置更简单，且拥有出色的跨平台支持。

## Syntax

```powershell
EnsureWireGuard [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [-Bottom] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-Height <Int32>] [-Left] [-NoBorders] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [-Width <Int32>] [<CommonParameters>]
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
| `-ShowWindow` | SwitchParameter | — | — | Named | — | 在初始化期间显示 Docker Desktop 窗口 |
| `-NoBorders` | SwitchParameter | — | — | Named | — | 移除窗口的边框 |
| `-Width` | Int32 | — | — | Named | `-1` | 窗口的初始宽度 |
| `-Height` | Int32 | — | — | Named | `-1` | 窗口的初始高度 |
| `-Left` | SwitchParameter | — | — | Named | — | 将窗口放置在屏幕左侧 |
| `-Right` | SwitchParameter | — | — | Named | — | 将窗口放在屏幕右侧 |
| `-Bottom` | SwitchParameter | — | — | Named | — | 将窗口放置在屏幕底部 |
| `-Centered` | SwitchParameter | — | — | Named | — | 将窗口放置在屏幕中央 |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | 最大化窗口 |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | 恢复 PowerShell 窗口焦点 |
| `-SideBySide` | SwitchParameter | — | — | Named | — | 将在与 PowerShell 不同的显示器上全屏显示窗口，或与 PowerShell 在同一显示器上并排显示 |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 打开后聚焦窗口 |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 打开后将窗口置于前台 |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | 发送键时转义控制字符和修饰符 |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | 在发送按键时，保持键盘焦点在目标窗口上 |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | 请在发送键时使用Shift+Enter代替Enter |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 发送按键时不同输入字符串之间的延迟（毫秒） |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 清除存储在会话中的人工智能偏好替代设置 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 仅将设置存储在持久化偏好中，不影响会话 |
| `-Force` | SwitchParameter | — | — | Named | — | 强制重建 Docker 容器并移除现有数据 |

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
