# Get-AudioDeviceNames

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Retrieves the names of available audio devices for microphone or desktop audio capture.

## Description

Enumerates audio devices that can be used with other cmdlets that accept an AudioDevice parameter. It supports both microphone devices and desktop audio capture devices.

## Syntax

```powershell
Get-AudioDeviceNames [-UseDesktopAudioCapture] [-Passthru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | `False` | Whether to list desktop audio capture devices instead of microphone devices |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | Returns detailed device objects instead of just names |

## Examples

### Example 1

```powershell
Get-AudioDeviceNames
```

Retrieves a list of available microphone device names.

### Example 2

```powershell
Get-AudioDeviceNames -UseDesktopAudioCapture
```

Retrieves a list of available desktop audio capture device names.

### Example 3

```powershell
Get-AudioDeviceNames -Passthru
```

Retrieves detailed objects containing information about microphone devices.

## Related Links

- [Get-AudioDeviceNames on GitHub](https://github.com/genXdev/genXdev)
