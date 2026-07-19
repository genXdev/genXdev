# Show-GenXdevCmdlet

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `cmds

## Synopsis

> Muestra los módulos de GenXdev PowerShell con sus cmdlets y alias.

## Description

Enumera todos los módulos de GenXdev PowerShell instalados y sus cmdlets y alias asociados. Usa Get-GenXDevCmdlet para recuperar información de cmdlets y opcionalmente sus posiciones en el script. Proporciona filtrado y varias opciones de visualización.

## Syntax

```powershell
Show-GenXdevCmdlet [[-CmdletName] <String>] [[-DefinitionMatches] <String>] [[-ModuleName] <String[]>] [-ExactMatch] [-FromScripts] [-NoLocal] [-Online] [-OnlyAliases] [-OnlyPublished] [-OnlyReturnModuleNames] [-PassThru] [-ShowTable] [<CommonParameters>]

Show-GenXdevCmdlet [-IncludeScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | ✅ (ByPropertyName) | 0 | — | Patrón de búsqueda para filtrar cmdlets 🌐 *Supports wildcards* |
| `-DefinitionMatches` | String | — | ✅ (ByValue, ByPropertyName) | 1 | — | Expresión regular para definir definiciones de cmdlet |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 2 | — | Nombres de módulos GenXdev a buscar 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Omitir la búsqueda en rutas de módulos locales |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Buscar solo en rutas de módulos publicados |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Buscar en archivos de script en lugar de módulos |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | Incluye el directorio scripts además de los módulos regulares *(Parameter set: )* |
| `-OnlyReturnModuleNames` | SwitchParameter | — | — | Named | — | Only return unique module names |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | Realice coincidencias exactas en lugar de coincidencias con comodines |
| `-Online` | SwitchParameter | — | — | Named | — | Open GitHub documentation instead of console output |
| `-OnlyAliases` | SwitchParameter | — | — | Named | — | Cuando se especifica, muestra solo alias de cmdlets |
| `-ShowTable` | SwitchParameter | — | — | Named | — | Display results in table format |
| `-PassThru` | SwitchParameter | — | — | Named | — | The `-PassThru` parameter. |

## Examples

### Show-GenXdevCmdlet -CmdletName "Get" -ModuleName "Console" -ShowTable Lists all cmdlets starting with "Get" in the Console module as a table

```powershell
Show-GenXdevCmdlet -CmdletName "Get" -ModuleName "Console" -ShowTable
Lists all cmdlets starting with "Get" in the Console module as a table
```

### cmds get -m console Lists all cmdlets starting with "Get" in the Console module

```powershell
cmds get -m console
Lists all cmdlets starting with "Get" in the Console module
```

### Show-GenXdevCmdlet -OnlyReturnModuleNames Returns only unique module names

```powershell
Show-GenXdevCmdlet -OnlyReturnModuleNames
Returns only unique module names
```

## Outputs

- `Collections.ArrayList`
- `Void`

## Related Links

- [Show-GenXdevCmdlet on GitHub](https://github.com/genXdev/genXdev)
