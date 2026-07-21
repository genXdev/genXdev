# Get-AudioDeviceNames

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Отримує назви доступних аудіопристроїв для захоплення мікрофонного або звуку з робочого столу.

## Description

Перелічує аудіопристрої, які можна використовувати з іншими командлетами, що приймають параметр AudioDevice. Підтримує як мікрофонні пристрої, так і пристрої захвату аудіо з робочого столу.

## Syntax

```powershell
Get-AudioDeviceNames [-Passthru] [-UseDesktopAudioCapture] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | `False` | Чи виводити список пристроїв захоплення аудіо робочого столу замість пристроїв мікрофона |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | Повертає детальні об'єкти пристроїв замість лише імен |

## Examples

### Example 1

```powershell
Get-AudioDeviceNames
```

Отримує список доступних назв мікрофонних пристроїв.

### Example 2

```powershell
Get-AudioDeviceNames -UseDesktopAudioCapture
```

Отримує список назв доступних пристроїв захоплення аудіо з робочого столу.

### Example 3

```powershell
Get-AudioDeviceNames -Passthru
```

Отримує детальні об'єкти, що містять інформацію про мікрофонні пристрої.

## Parameter Details

### `-UseDesktopAudioCapture`

> Чи виводити список пристроїв захоплення аудіо робочого столу замість пристроїв мікрофона

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

> Повертає детальні об'єкти пристроїв замість лише імен

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

- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Test-CpuAvx.md)
