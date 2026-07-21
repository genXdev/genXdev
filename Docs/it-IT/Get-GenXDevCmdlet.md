# Get-GenXDevCmdlet

> **Module:** GenXdev | **Type:** Function | **Aliases:** `gcmds`

## Synopsis

> Recupera ed elenca tutti i cmdlet di GenXdev e i relativi dettagli.

## Description

Esegue una ricerca nei moduli e file script di GenXdev installati per trovare cmdlet, i loro alias e descrizioni. Può filtrare per pattern di nome e nome del modulo. Supporta il filtraggio per definizioni di cmdlet e fornisce opzioni di ricerca flessibili tra percorsi di moduli sia locali che pubblicati.

## Syntax

```powershell
Get-GenXDevCmdlet [[-CmdletName] <String[]>] [[-DefinitionMatches] <String>] [[-ModuleName] <String[]>] [-ExactMatch] [-FromScripts] [-NoLocal] [-OnlyPublished] [-OnlyReturnModuleNames] [<CommonParameters>]

Get-GenXDevCmdlet [-IncludeScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String[] | — | ✅ (ByPropertyName) | 0 | — | Modello di ricerca per filtrare i cmdlet 🌐 *Supports wildcards* |
| `-DefinitionMatches` | String | — | ✅ (ByValue, ByPropertyName) | 1 | — | Espressione regolare per confrontare le definizioni dei cmdlet |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 2 | — | Nomi dei moduli GenXdev da cercare 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Salta la ricerca nei percorsi dei moduli locali |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Cerca solo nei percorsi dei moduli pubblicati |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Cerca nei file di script invece dei moduli |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | Include la directory degli script oltre ai moduli regolari *(Parameter set: )* |
| `-OnlyReturnModuleNames` | SwitchParameter | — | — | Named | — | Solo nomi di moduli univoci |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | Esegui corrispondenza esatta invece di corrispondenza con caratteri jolly |

## Examples

### Get-GenXDevCmdlet -CmdletName "Get-*" -ModuleName "Console" -NoLocal

```powershell
Get-GenXDevCmdlet -CmdletName "Get-*" -ModuleName "Console" -NoLocal
```

### gcmds Get-*

```powershell
gcmds Get-*
```

### Get-GenXDevCmdlet -OnlyReturnModuleNames

```powershell
Get-GenXDevCmdlet -OnlyReturnModuleNames
```

## Parameter Details

### `-CmdletName <String[]>`

> Modello di ricerca per filtrare i cmdlet

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `Filter`, `CmdLet`, `Cmd`, `FunctionName`, `Name` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-DefinitionMatches <String>`

> Espressione regolare per confrontare le definizioni dei cmdlet

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModuleName <String[]>`

> Nomi dei moduli GenXdev da cercare

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `Module`, `BaseModuleName`, `SubModuleName` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-NoLocal`

> Salta la ricerca nei percorsi dei moduli locali

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyPublished`

> Cerca solo nei percorsi dei moduli pubblicati

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FromScripts`

> Cerca nei file di script invece dei moduli

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeScripts`

> Include la directory degli script oltre ai moduli regolari

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | ModuleName |

<hr/>
### `-OnlyReturnModuleNames`

> Solo nomi di moduli univoci

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExactMatch`

> Esegui corrispondenza esatta invece di corrispondenza con caratteri jolly

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `GenXdev.Helpers.GenXdevCmdletInfo`
- `String`

## Related Links

- [Show-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Show-GenXdevCmdlet.md)
