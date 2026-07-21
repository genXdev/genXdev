# Get-AudioDeviceNames

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Haalt de namen op van beschikbare audioapparaten voor microfoon- of desktopaudio-opname.

## Description

Inventariseert audioapparaten die kunnen worden gebruikt met andere cmdlets die een AudioDevice-parameter accepteren. Het ondersteunt zowel microfoonapparaten als apparaten voor het vastleggen van desktopaudio.

## Syntax

```powershell
Get-AudioDeviceNames [-Passthru] [-UseDesktopAudioCapture] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | `False` | Of er desktop-audiocapture-apparaten moeten worden weergegeven in plaats van microfoonapparaten |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | Retourneert gedetailleerde apparaatobjecten in plaats van alleen namen |

## Examples

### Example 1

```powershell
Get-AudioDeviceNames
```

Haalt een lijst op van beschikbare microfoonapparaatnamen.

### Example 2

```powershell
Get-AudioDeviceNames -UseDesktopAudioCapture
```

Haalt een lijst op van beschikbare namen van desktop-audiocapture-apparaten.

### Example 3

```powershell
Get-AudioDeviceNames -Passthru
```

Haalt gedetailleerde objecten op met informatie over microfoonapparaten.

## Parameter Details

### `-UseDesktopAudioCapture`

> Of er desktop-audiocapture-apparaten moeten worden weergegeven in plaats van microfoonapparaten

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

> Retourneert gedetailleerde apparaatobjecten in plaats van alleen namen

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

- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Test-CpuAvx.md)
