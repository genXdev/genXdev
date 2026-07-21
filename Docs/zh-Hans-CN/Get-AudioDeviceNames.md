# Get-AudioDeviceNames

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 检索可用于麦克风或桌面音频捕获的音频设备名称。

## Description

枚举可与接受 AudioDevice 参数的其他 cmdlet 一起使用的音频设备。它同时支持麦克风设备和桌面音频捕获设备。

## Syntax

```powershell
Get-AudioDeviceNames [-Passthru] [-UseDesktopAudioCapture] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | `False` | 是否列出桌面音频捕获设备而非麦克风设备 |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | 返回详细的设备对象而不仅仅是名称 |

## Examples

### Example 1

```powershell
Get-AudioDeviceNames
```

检索可用麦克风设备名称的列表。

### Example 2

```powershell
Get-AudioDeviceNames -UseDesktopAudioCapture
```

检索可用桌面音频捕获设备名称的列表。

### Example 3

```powershell
Get-AudioDeviceNames -Passthru
```

检索包含麦克风设备信息的详细对象。

## Parameter Details

### `-UseDesktopAudioCapture`

> 是否列出桌面音频捕获设备而非麦克风设备

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Passthru`

> 返回详细的设备对象而不仅仅是名称

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Test-CpuAvx.md)
