# Get-GenXDevCmdlet

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `gcmds

## Synopsis

> Recupera y enumera todos los cmdlets de GenXdev y sus detalles.

## Description

Busca entre los módulos GenXdev instalados y archivos de script para encontrar cmdlets, sus alias y descripciones. Puede filtrar por patrón de nombre y nombre de módulo. Admite filtrado por definiciones de cmdlet y proporciona opciones de búsqueda flexibles tanto en rutas de módulos locales como publicados.

## Syntax

```powershell
Get-GenXDevCmdlet [[-CmdletName] <String[]>] [[-DefinitionMatches] <String>] [[-ModuleName] <String[]>] [-ExactMatch] [-FromScripts] [-NoLocal] [-OnlyPublished] [-OnlyReturnModuleNames] [<CommonParameters>]

Get-GenXDevCmdlet [-IncludeScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String[] | — | ✅ (ByPropertyName) | 0 | — | Patrón de búsqueda para filtrar cmdlets 🌐 *Supports wildcards* |
| `-DefinitionMatches` | String | — | ✅ (ByValue, ByPropertyName) | 1 | — | Expresión regular para definir definiciones de cmdlet |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 2 | — | Nombres de módulos GenXdev a buscar 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Omitir la búsqueda en rutas de módulos locales |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Buscar solo en rutas de módulos publicados |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Buscar en archivos de script en lugar de módulos |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | Incluye el directorio scripts además de los módulos regulares *(Parameter set: )* |
| `-OnlyReturnModuleNames` | SwitchParameter | — | — | Named | — | Only return unique module names |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | Realice coincidencias exactas en lugar de coincidencias con comodines |

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

## Outputs

- `GenXdev.Helpers.GenXdevCmdletInfo`
- `String`

## Related Links

- [Get-GenXDevCmdlet on GitHub](https://github.com/genXdev/genXdev)
