# Remove-WireGuardPeer

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> 删除 WireGuard VPN 对等端配置。

## Description

此函数用于删除在Docker容器中运行的服务器上的WireGuard VPN对等体配置。它会删除对等体的配置文件，并更新WireGuard服务器以停止接受来自该对等体的连接。函数会在删除前验证对等体是否存在，除非指定了Force参数，否则会提供确认提示。

## Syntax

```powershell
Remove-WireGuardPeer -PeerName <String> [-Bottom] [-Centered] [-ClearSession] [-ContainerName <String>] [-FocusWindow] [-Force] [-Fullscreen] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-Height <Int32>] [-ImageName <String>] [-Left] [-NoBorders] [-NoDockerInitialize] [-PGID <String>] [-PUID <String>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-ServicePort <Int32>] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [-TimeZone <String>] [-VolumeName <String>] [-Width <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PeerName` | String | ✅ | — | 0 | — | 要移除的对等节点名称 |
| `-ContainerName` | String | — | — | Named | `'wireguard'` | Docker容器的名称 |
| `-VolumeName` | String | — | — | Named | `'wireguard_data'` | 用于持久化存储的Docker卷名称 |
| `-ServicePort` | Int32 | — | — | Named | `51839` | WireGuard 服务的端口号 |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | 服务健康检查的最大等待时间（秒） |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | 健康检查尝试之间的间隔（秒） |
| `-ImageName` | String | — | — | Named | `'linuxserver/wireguard'` | 要使用的自定义 Docker 镜像名称 |
| `-PUID` | String | — | — | Named | `'1000'` | 容器内权限的用户ID |
| `-PGID` | String | — | — | Named | `'1000'` | 容器中用于权限的组ID |
| `-TimeZone` | String | — | — | Named | `'Etc/UTC'` | 容器使用的时区 |
| `-Force` | SwitchParameter | — | — | Named | — | 强制移除无需确认 |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | 在被父函数调用时跳过 Docker 初始化 |
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

## Examples

### Remove-WireGuardPeer -PeerName "MyPhone"

```powershell
Remove-WireGuardPeer -PeerName "MyPhone"
```

删除名为 "MyPhone" 的对等节点，并显示确认提示。

### Remove-WireGuardPeer -PeerName "Tablet" -Force

```powershell
Remove-WireGuardPeer -PeerName "Tablet" -Force
```

Removes the peer named "Tablet" without confirmation prompt.

### Remove-WireGuardPeer "WorkLaptop"

```powershell
Remove-WireGuardPeer "WorkLaptop"
```

使用位置参数语法移除对等节点。

## Related Links

- [Remove-WireGuardPeer on GitHub](https://github.com/genXdev/genXdev)
