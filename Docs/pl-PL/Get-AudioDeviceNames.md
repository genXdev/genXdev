# Get-AudioDeviceNames

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Pobiera nazwy dostępnych urządzeń audio do przechwytywania dźwięku z mikrofonu lub pulpitu.

## Description

Wylicza urządzenia audio, które mogą być używane z innymi poleceniami cmdlet akceptującymi parametr AudioDevice. Obsługuje zarówno urządzenia mikrofonowe, jak i urządzenia do przechwytywania dźwięku z pulpitu.

## Syntax

```powershell
Get-AudioDeviceNames [-Passthru] [-UseDesktopAudioCapture] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | `False` | Czy wyświetlić listę urządzeń do przechwytywania dźwięku z pulpitu zamiast urządzeń mikrofonowych |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | Zwraca szczegółowe obiekty urządzeń zamiast samych nazw |

## Examples

### Example 1

```powershell
Get-AudioDeviceNames
```

Pobiera listę dostępnych nazw urządzeń mikrofonowych.

### Example 2

```powershell
Get-AudioDeviceNames -UseDesktopAudioCapture
```

Pobiera listę dostępnych nazw urządzeń do przechwytywania dźwięku z pulpitu.

### Example 3

```powershell
Get-AudioDeviceNames -Passthru
```

Pobiera szczegółowe obiekty zawierające informacje o urządzeniach mikrofonowych.

## Parameter Details

### `-UseDesktopAudioCapture`

> Czy wyświetlić listę urządzeń do przechwytywania dźwięku z pulpitu zamiast urządzeń mikrofonowych

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

> Zwraca szczegółowe obiekty urządzeń zamiast samych nazw

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

- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Test-CpuAvx.md)
