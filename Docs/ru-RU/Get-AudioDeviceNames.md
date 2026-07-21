# Get-AudioDeviceNames

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Получает имена доступных аудиоустройств для захвата микрофона или звука рабочего стола.

## Description

Перечисляет аудиоустройства, которые можно использовать с другими командлетами, принимающими параметр AudioDevice. Поддерживаются как микрофонные устройства, так и устройства захвата звука с рабочего стола.

## Syntax

```powershell
Get-AudioDeviceNames [-Passthru] [-UseDesktopAudioCapture] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | `False` | Перечислять ли устройства захвата звука рабочего стола вместо микрофонных устройств |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | Возвращает подробные объекты устройств, а не только имена |

## Examples

### Example 1

```powershell
Get-AudioDeviceNames
```

Извлекает список доступных имен устройств микрофона.

### Example 2

```powershell
Get-AudioDeviceNames -UseDesktopAudioCapture
```

Получает список доступных имен устройств захвата звука с рабочего стола.

### Example 3

```powershell
Get-AudioDeviceNames -Passthru
```

Извлекает подробные объекты, содержащие информацию об устройствах микрофона.

## Parameter Details

### `-UseDesktopAudioCapture`

> Перечислять ли устройства захвата звука рабочего стола вместо микрофонных устройств

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

> Возвращает подробные объекты устройств, а не только имена

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

- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Test-CpuAvx.md)
