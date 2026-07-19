# Get-CpuCore

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula e retorna o número total de núcleos lógicos de CPU no sistema.

## Description

Consulta o hardware do sistema através do Windows Management Instrumentation (WMI) para determinar o número total de núcleos lógicos da CPU. A função considera a hipersegmentação (hyperthreading) multiplicando a contagem de núcleos físicos por 2.

## Syntax

```powershell
Get-CpuCore [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-CpuCore
```

Obtém o número total de núcleos lógicos de CPU.

## Related Links

- [Get-CpuCore on GitHub](https://github.com/genXdev/genXdev)
