# Get-WireGuardStatus

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-WireGuardStatus [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [[-Width] <Int32>] [[-Height] <Int32>] [[-Left] <Int32>] [[-Right] <Int32>] [[-Bottom] <Int32>] [[-SendKeyDelayMilliSeconds] <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [<CommonParameters>]
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
| `-ShowWindow` | SwitchParameter | — | — | Named | — | 运行时显示窗口（透传） |
| `-NoBorders` | SwitchParameter | — | — | Named | — | 移除窗口边框（穿透） |
| `-Width` | Int32 | — | — | 9 | `-1` | 窗口宽度（字符或像素，直通） |
| `-Height` | Int32 | — | — | 10 | `-1` | 窗口高度（字符数或像素数，透传） |
| `-Left` | Int32 | — | — | 11 | — | 窗口左侧位置（直通） |
| `-Right` | Int32 | — | — | 12 | — | 窗口右侧位置（直通） |
| `-Bottom` | Int32 | — | — | 13 | — | 窗口底部位置（穿透） |
| `-Centered` | SwitchParameter | — | — | Named | — | 居中显示窗口（直通） |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | 以全屏模式打开窗口（穿透） |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | 操作后恢复窗口焦点（透传） |
| `-SideBySide` | SwitchParameter | — | — | Named | — | 并排显示窗口（直通） |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 打开窗口后聚焦窗口（透传） |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 将窗口置于前台（穿透） |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | 向窗口发送 Escape 键（透传） |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | 发送按键时保持键盘焦点（直通） |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | 发送按键时使用Shift+Enter（透传） |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | 14 | — | 发送按键（直通）之间的延迟（毫秒） |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Session only mode (pass-through) |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 清除会话数据（直通） |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 跳过会话初始化（直通） |

## Related Links

- [Get-WireGuardStatus on GitHub](https://github.com/genXdev/genXdev)
