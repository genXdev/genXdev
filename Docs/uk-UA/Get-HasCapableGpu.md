# Get-HasCapableGpu

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Визначає, чи присутній графічний процесор із підтримкою CUDA з достатнім обсягом пам’яті.

## Description

Перевіряє систему на наявність графічних процесорів, сумісних з CUDA, з об'ємом відеопам'яті щонайменше 4 ГБ. Використовує інструментарій управління Windows (WMI) для запиту встановлених відеоконтролерів і перевірки їхньої ємності пам'яті. Ця перевірка є важливою для робочих навантажень ШІ, які потребують значного об'єму пам'яті графічного процесора.

## Syntax

```powershell
Get-HasCapableGpu [<CommonParameters>]
```

## Examples

### Example 1

```powershell
$hasGpu = Get-HasCapableGpu
Write-Host "System has capable GPU: $hasGpu"
```

Перевіряє, чи має система графічний процесор з підтримкою CUDA та достатнім обсягом пам'яті.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-CpuCore.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Test-CpuAvx.md)
