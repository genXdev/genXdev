# Get-NumberOfCpuCores

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berechnet und gibt die Gesamtzahl der logischen CPU-Kerne im System zurück.

## Description

Ermittelt die Systemhardware über Windows-Verwaltungsinstrumentation (WMI), um die Gesamtzahl der logischen CPU-Kerne zu bestimmen. Das Cmdlet berücksichtigt Hyperthreading, indem es die physische Kernanzahl mit 2 multipliziert. Diese Informationen sind nützlich zur Optimierung von Parallelverarbeitungsaufgaben und zum Verständnis der Systemfähigkeiten.

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

Ruft die Gesamtzahl der logischen CPU-Kerne ab, die auf dem System verfügbar sind.

## Related Links

- [Get-NumberOfCpuCores on GitHub](https://github.com/genXdev/genXdev)
