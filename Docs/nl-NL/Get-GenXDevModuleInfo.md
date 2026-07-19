# Get-GenXDevModuleInfo

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Haalt gedetailleerde informatie op over GenXdev PowerShell-modules.

## Description

Deze functie onderzoekt GenXdev PowerShell-modules en retourneert informatie over hun configuratie, versies en aanwezigheid van belangrijke bestanden. Het kan ofwel gespecificeerde modules of alle beschikbare modules verwerken.

## Syntax

```powershell
Get-GenXDevModuleInfo [[-ModuleName] <String[]>] [-IncludeLocal] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@()` | Namen van te analyseren modules |
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
