# Get-NumberOfCpuCores

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula e retorna o número total de núcleos lógicos de CPU no sistema.

## Description

Consulta o hardware do sistema através do Windows Management Instrumentation (WMI) para determinar o número total de núcleos lógicos da CPU. O cmdlet considera o hyperthreading multiplicando a contagem de núcleos físicos por 2. Esta informação é útil para otimizar tarefas de processamento paralelo e entender as capacidades do sistema.

## Syntax

```powershell
Get-NumberOfCpuCores [<CommonParameters>]
```

## Examples

### Example 1

```powershell
$cores = Get-NumberOfCpuCores
Write-Host "System has $cores logical CPU cores available"
```

Recupera o número total de núcleos lógicos de CPU disponíveis no sistema.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-MonitorCount.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Test-CpuAvx.md)
