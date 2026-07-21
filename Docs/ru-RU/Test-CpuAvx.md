# Test-CpuAvx

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Проверяет, поддерживает ли CPU наборы инструкций AVX и AVX2.

## Description

* Проверяет, поддерживает ли процессор наборы инструкций AVX и AVX2, используя
  Windows API (kernel32.dll IsProcessorFeaturePresent).
* Возвращает объект с логическими свойствами AVX и AVX2.
* Полезно для определения совместимости оборудования для рабочих нагрузок ИИ/МО.

## Syntax

```powershell
Test-CpuAvx [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Test-CpuAvx
```

Проверяет поддержку набора инструкций CPU и возвращает доступность AVX/AVX2.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-NumberOfCpuCores.md)
