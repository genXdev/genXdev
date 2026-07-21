# Get-CpuCore

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula e retorna o número total de núcleos lógicos de CPU no sistema.

## Description

Consulta o hardware do sistema através do Windows Management Instrumentation (WMI) para determinar o número total de núcleos lógicos da CPU. A função considera o hyperthreading multiplicando a contagem de núcleos físicos por 2.

## Syntax

```powershell
Get-CpuCore [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-CpuCore
```

Obtém o número total de núcleos de CPU lógicos.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-AudioDeviceNames.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Test-CpuAvx.md)
