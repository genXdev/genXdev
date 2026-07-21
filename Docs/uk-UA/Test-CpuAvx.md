# Test-CpuAvx

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Перевіряє, чи підтримує процесор набори інструкцій AVX та AVX2.

## Description

* Перевіряє, чи підтримує процесор набори інструкцій AVX та AVX2, використовуючи Windows API (kernel32.dll IsProcessorFeaturePresent).
* Повертає об'єкт з логічними властивостями AVX та AVX2.
* Корисно для визначення сумісності обладнання для робочих навантажень AI/ML.

## Syntax

```powershell
Test-CpuAvx [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Test-CpuAvx
```

Перевіряє підтримку набору інструкцій ЦП і повертає наявність AVX/AVX2.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-NumberOfCpuCores.md)
