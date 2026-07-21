# Get-AudioDeviceNames

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Récupère les noms des périphériques audio disponibles pour la capture du microphone ou de l'audio du bureau.

## Description

Énumère les périphériques audio pouvant être utilisés avec d'autres cmdlets qui acceptent un paramètre AudioDevice. Il prend en charge à la fois les microphones et les périphériques de capture audio de bureau.

## Syntax

```powershell
Get-AudioDeviceNames [-Passthru] [-UseDesktopAudioCapture] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | `False` | Indique s'il faut répertorier les périphériques de capture audio du bureau au lieu des périphériques microphone |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | Retourne des objets d'appareil détaillés au lieu de simples noms |

## Examples

### Example 1

```powershell
Get-AudioDeviceNames
```

Récupère une liste des noms de périphériques microphone disponibles.

### Example 2

```powershell
Get-AudioDeviceNames -UseDesktopAudioCapture
```

Récupère une liste des noms de périphériques de capture audio de bureau disponibles.

### Example 3

```powershell
Get-AudioDeviceNames -Passthru
```

Récupère des objets détaillés contenant des informations sur les périphériques microphone.

## Parameter Details

### `-UseDesktopAudioCapture`

> Indique s'il faut répertorier les périphériques de capture audio du bureau au lieu des périphériques microphone

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

> Retourne des objets d'appareil détaillés au lieu de simples noms

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

- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRTest-CpuAvx.md)
