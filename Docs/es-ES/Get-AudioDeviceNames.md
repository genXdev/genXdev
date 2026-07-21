# Get-AudioDeviceNames

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Recupera los nombres de los dispositivos de audio disponibles para la captura de micrófono o audio de escritorio.

## Description

Enumera los dispositivos de audio que pueden usarse con otros cmdlets que acepten un parámetro AudioDevice. Admite tanto dispositivos de micrófono como dispositivos de captura de audio de escritorio.

## Syntax

```powershell
Get-AudioDeviceNames [-Passthru] [-UseDesktopAudioCapture] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | `False` | Si se deben enumerar los dispositivos de captura de audio de escritorio en lugar de los dispositivos de micrófono |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | Devuelve objetos de dispositivo detallados en lugar de solo nombres |

## Examples

### Example 1

```powershell
Get-AudioDeviceNames
```

Recupera una lista de nombres de dispositivos de micrófono disponibles.

### Example 2

```powershell
Get-AudioDeviceNames -UseDesktopAudioCapture
```

Recupera una lista de nombres disponibles de dispositivos de captura de audio de escritorio.

### Example 3

```powershell
Get-AudioDeviceNames -Passthru
```

Recupera objetos detallados que contienen información sobre los dispositivos de micrófono.

## Parameter Details

### `-UseDesktopAudioCapture`

> Si se deben enumerar los dispositivos de captura de audio de escritorio en lugar de los dispositivos de micrófono

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

> Devuelve objetos de dispositivo detallados en lugar de solo nombres

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

- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Test-CpuAvx.md)
