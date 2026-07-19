# Get-NumberOfCpuCores

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula e retorna o número total de núcleos lógicos de CPU no sistema.

## Description

Consulta o hardware do sistema através do Windows Management Instrumentation (WMI) para determinar o número total de núcleos lógicos de CPU. O cmdlet considera o hyperthreading multiplicando a contagem de núcleos físicos por 2. Essas informações são úteis para otimizar tarefas de processamento paralelo e entender as capacidades do sistema.

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

- [Get-NumberOfCpuCores on GitHub](https://github.com/genXdev/genXdev)
