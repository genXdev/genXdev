# Show-GenXdevCmdlet

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `cmds

## Synopsis

> *(No synopsis provided)*

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

## Outputs

- `Collections.ArrayList`
- `Void`

## Related Links

- [Show-GenXdevCmdlet on GitHub](https://github.com/genXdev/genXdev)
