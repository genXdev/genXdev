# Get-GenXDevModuleInfo

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Ruft detaillierte Informationen über GenXdev PowerShell-Module ab.

## Description

Diese Funktion untersucht PowerShell-Module von GenXdev und gibt Informationen über deren Konfiguration, Versionen und Vorhandensein wichtiger Dateien zurück. Sie kann entweder bestimmte Module oder alle verfügbaren Module verarbeiten.

## Syntax

```powershell
Get-GenXDevModuleInfo [[-ModuleName] <String[]>] [-IncludeLocal] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@()` | Namen der zu analysierenden Module |
| `-IncludeLocal` | SwitchParameter | — | — | Named | — | The `-IncludeLocal` parameter. |

## Examples

### Get-GenXDevModuleInfo -ModuleName "GenXdev.Console"

```powershell
Get-GenXDevModuleInfo -ModuleName "GenXdev.Console"
```

### "GenXdev.Console" | Get-GenXDevModuleInfo

```powershell
"GenXdev.Console" | Get-GenXDevModuleInfo
```

## Related Links

- [Get-GenXDevModuleInfo on GitHub](https://github.com/genXdev/genXdev)
