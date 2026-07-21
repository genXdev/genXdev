# Get-HasCapableGpu

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Определяет, присутствует ли GPU с поддержкой CUDA и достаточным объемом памяти.

## Description

Проверяет систему на наличие CUDA-совместимых GPU с объемом видеопамяти не менее 4 ГБ. Использует инструментарий управления Windows (WMI) для запроса установленных видеоадаптеров и проверки их объема памяти. Эта проверка необходима для рабочих нагрузок ИИ, требующих значительного объема памяти GPU.

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

Проверяет, имеет ли система графический процессор с поддержкой CUDA и достаточным объемом памяти.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-CpuCore.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Test-CpuAvx.md)
