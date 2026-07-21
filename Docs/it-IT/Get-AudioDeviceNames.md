# Get-AudioDeviceNames

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Recupera i nomi dei dispositivi audio disponibili per la cattura del microfono o dell'audio del desktop.

## Description

Enumera i dispositivi audio che possono essere utilizzati con altri cmdlet che accettano un parametro AudioDevice. Supporta sia dispositivi microfono che dispositivi di acquisizione audio desktop.

## Syntax

```powershell
Get-AudioDeviceNames [-Passthru] [-UseDesktopAudioCapture] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | `False` | Indica se elencare i dispositivi di acquisizione audio del desktop anziché i dispositivi microfono |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | Restituisce oggetti dispositivo dettagliati invece di solo nomi |

## Examples

### Example 1

```powershell
Get-AudioDeviceNames
```

Recupera un elenco dei nomi dei dispositivi microfono disponibili.

### Example 2

```powershell
Get-AudioDeviceNames -UseDesktopAudioCapture
```

Recupera un elenco di nomi di dispositivi di acquisizione audio desktop disponibili.

### Example 3

```powershell
Get-AudioDeviceNames -Passthru
```

Recupera oggetti dettagliati che contengono informazioni sui dispositivi microfono.

## Parameter Details

### `-UseDesktopAudioCapture`

> Indica se elencare i dispositivi di acquisizione audio del desktop anziché i dispositivi microfono

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

> Restituisce oggetti dispositivo dettagliati invece di solo nomi

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

- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Test-CpuAvx.md)
