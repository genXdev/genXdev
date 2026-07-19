# Get-ChildProcesses

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Haalt alle processen op die onderliggend zijn aan het huidige PowerShell-proces.

## Description

* Onderzoekt alle actieve processen en identificeert diegene die het huidige
  PowerShell-proces als voorouder in hun bovenliggende procesketen hebben.
* Dit omvat zowel directe onderliggende processen als hun afstammelingen
  (kleinkinderen, enz.).

## Syntax

```powershell
Get-ChildProcesses [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-ChildProcesses
```

Haal alle onderliggende processen van de huidige PowerShell-sessie op.

### Example 2

```powershell
Get-ChildProcesses -Verbose
```

Haal onderliggende processen op met uitgebreide uitvoer die gedetailleerde procesdetectie-informatie toont.

## Related Links

- [Get-ChildProcesses on GitHub](https://github.com/genXdev/genXdev)
