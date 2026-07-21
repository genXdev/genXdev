# Get-AudioDeviceNames

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Ruft die Namen der verfügbaren Audiogeräte für Mikrofon- oder Desktop-Audioaufnahme ab.

## Description

Zählt Audiogeräte auf, die mit anderen Cmdlets verwendet werden können, die einen AudioDevice-Parameter akzeptieren. Es unterstützt sowohl Mikrofon- als auch Desktop-Audioerfassungsgeräte.

## Syntax

```powershell
Get-AudioDeviceNames [-Passthru] [-UseDesktopAudioCapture] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | `False` | Gibt an, ob Desktop-Audioaufnahmegeräte anstelle von Mikrofongeräten aufgelistet werden sollen |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | Gibt detaillierte Geräteobjekte anstelle von nur Namen zurück |

## Examples

### Example 1

```powershell
Get-AudioDeviceNames
```

Ruft eine Liste der verfügbaren Mikrofon-Gerätenamen ab.

### Example 2

```powershell
Get-AudioDeviceNames -UseDesktopAudioCapture
```

Ruft eine Liste der verfügbaren Desktop-Audioaufnahmegerätenamen ab.

### Example 3

```powershell
Get-AudioDeviceNames -Passthru
```

Ruft detaillierte Objekte mit Informationen über Mikrofon-Geräte ab.

## Parameter Details

### `-UseDesktopAudioCapture`

> Gibt an, ob Desktop-Audioaufnahmegeräte anstelle von Mikrofongeräten aufgelistet werden sollen

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

> Gibt detaillierte Geräteobjekte anstelle von nur Namen zurück

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

- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/de-DE/Test-CpuAvx.md)
