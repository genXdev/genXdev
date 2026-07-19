# Get-AudioDeviceNames

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 检索可用于麦克风或桌面音频捕捉的音频设备名称。

## Description

枚举可与接受 AudioDevice 参数的其他 cmdlet 搭配使用的音频设备。它同时支持麦克风设备和桌面音频捕获设备。

## Syntax

```powershell
Get-AudioDeviceNames [-UseDesktopAudioCapture] [-Passthru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | `False` | 是否列出桌面音频采集设备而非麦克风设备 |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | 返回详细的设备对象而不是仅返回名称 |

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

检索可用桌面音频捕获设备名称列表。

### Example 3

```powershell
Get-AudioDeviceNames -Passthru
```

检索包含麦克风设备信息的详细对象。

## Related Links

- [Get-AudioDeviceNames on GitHub](https://github.com/genXdev/genXdev)
