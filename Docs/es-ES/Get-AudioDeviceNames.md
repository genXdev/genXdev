# Get-AudioDeviceNames

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Recupera los nombres de los dispositivos de audio disponibles para la captura de micrófono o audio de escritorio.

## Description

Enumera los dispositivos de audio que se pueden usar con otros cmdlets que aceptan un parámetro AudioDevice. Admite tanto dispositivos de micrófono como dispositivos de captura de audio del escritorio.

## Syntax

```powershell
Get-AudioDeviceNames [-UseDesktopAudioCapture] [-Passthru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | `False` | Whether to list desktop audio capture devices instead of microphone devices |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | Devuelve objetos de dispositivo detallados en lugar de solo nombres |

## Examples

### Example 1

```powershell
Get-AudioDeviceNames
```

Recupera una lista de los nombres de dispositivos de micrófono disponibles.

### Example 2

```powershell
Get-AudioDeviceNames -UseDesktopAudioCapture
```

Obtiene una lista de los nombres de los dispositivos de captura de audio de escritorio disponibles.

### Example 3

```powershell
Get-AudioDeviceNames -Passthru
```

Recupera objetos detallados que contienen información sobre dispositivos de micrófono.

## Related Links

- [Get-AudioDeviceNames on GitHub](https://github.com/genXdev/genXdev)
