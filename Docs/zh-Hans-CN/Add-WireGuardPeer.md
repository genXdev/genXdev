# Add-WireGuardPeer

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> 向服务器添加一个新的 WireGuard VPN 对等体（客户端）配置。

## Description

此函数用于向运行在 Docker 容器中的 WireGuard VPN 服务器添加新客户端。它会生成一个带有唯一 IP 地址的新客户端配置，创建必要的加密密钥，并返回配置详情。该函数可选择将配置保存到文件或生成二维码，方便移动设备设置。函数验证客户端名称，检查重复项，并优雅地处理各种错误情况。

## Syntax

```powershell
Add-WireGuardPeer -PeerName <String> [[-AllowedIPs] <String>] [[-DNS] <String>] [[-OutputPath] <String>] [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [-Bottom <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-Height <Int32>] [-Left <Int32>] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-Right <Int32>] [-SaveConfig] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowQRCode] [-ShowWindow] [-SideBySide] [-SkipSession] [-Width <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PeerName` | String | ✅ | — | 0 | — | 对等节点的唯一名称 |
| `-AllowedIPs` | String | — | — | 1 | `'0.0.0.0/0, ::/0'` | 将通过VPN路由的IP范围 |
| `-DNS` | String | — | — | 2 | `'1.1.1.1, 1.0.0.1'` | 用于此对等体的DNS服务器 |
| `-OutputPath` | String | — | — | 3 | `"$env:USERPROFILE\WireGuardConfigs"` | 对等配置文件应保存的路径 |
| `-ContainerName` | String | — | — | 4 | `'wireguard'` | Docker容器的名称 |
| `-VolumeName` | String | — | — | 5 | `'wireguard_data'` | 用于持久化存储的Docker卷名称 |
| `-ServicePort` | Int32 | — | — | 6 | `51839` | WireGuard 服务的端口号 |
| `-HealthCheckTimeout` | Int32 | — | — | 7 | `60` | 服务健康检查的最大等待时间（秒） |
| `-HealthCheckInterval` | Int32 | — | — | 8 | `3` | 健康检查尝试之间的间隔（秒） |
| `-ImageName` | String | — | — | 9 | `'linuxserver/wireguard'` | 要使用的自定义 Docker 镜像名称 |
| `-PUID` | String | — | — | 10 | `'1000'` | 容器内权限的用户ID |
| `-PGID` | String | — | — | 11 | `'1000'` | 容器中用于权限的组ID |
| `-TimeZone` | String | — | — | 12 | `'Etc/UTC'` | 容器使用的时区 |
| `-SaveConfig` | SwitchParameter | — | — | Named | — | 将对等配置保存到文件中 |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | 初始化服务时显示 WireGuard 窗口 |
| `-NoBorders` | SwitchParameter | — | — | Named | — | 初始化服务时移除窗口边框 |
| `-Width` | Int32 | — | — | Named | `-1` | 初始化服务时设置窗口宽度 |
| `-Height` | Int32 | — | — | Named | `-1` | 初始化服务时设置窗口高度 |
| `-Left` | Int32 | — | — | Named | — | 初始化服务时设置窗口左位置 |
| `-Right` | Int32 | — | — | Named | — | 初始化服务时设置窗口正确位置 |
| `-Bottom` | Int32 | — | — | Named | — | 初始化服务时设置窗口底部位置 |
| `-Centered` | SwitchParameter | — | — | Named | — | 初始化服务时将窗口居中 |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | 在全区模式开启服务 |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | 在初始化服务后恢复窗口焦点 |
| `-SideBySide` | SwitchParameter | — | — | Named | — | 初始化服务时并排显示窗口 |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 初始化服务后聚焦窗口 |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 初始化服务后，将窗口置于前台 |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | 在初始化服务后，向窗口发送Escape键 |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | 初始化服务后发送按键时保持键盘焦点 |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | 初始化服务后，发送按键时请使用Shift+Enter |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 初始化服务后发送按键时的延迟（毫秒） |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 仅将会话用于 WireGuard 服务 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 在初始化服务时清除会话 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 初始化服务时跳过会话 |
| `-ShowQRCode` | SwitchParameter | — | — | Named | — | 为便捷移动设置生成二维码 |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | 跳过 Docker 初始化（当已由父函数调用时使用） |
| `-Force` | SwitchParameter | — | — | Named | — | 强制重建 Docker 容器并移除现有数据 |

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
