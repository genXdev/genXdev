# Get-MonitorCount

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Отримує загальну кількість дисплейних моніторів, підключених до системи.

## Description

* Використовує допоміжний клас Windows Presentation Foundation (WPF) Screen для точного визначення кількості фізичних дисплеїв, підключених наразі до системи.
* Це включає як активні, так і виявлені, але відключені монітори.

## Syntax

```powershell
Get-MonitorCount [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-MonitorCount
```

Повертає загальну кількість підключених моніторів (наприклад, 2).

### Example 2

```powershell
$screens = Get-MonitorCount -Verbose
```

Повертає кількість моніторів з докладним виведенням процесу виявлення.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-HasCapableGpu.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Test-CpuAvx.md)
