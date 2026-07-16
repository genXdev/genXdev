# Search-GenXdevCmdlet

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `searchcmdlet

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Search-GenXdevCmdlet [[-CmdletName] <String>] [[-ModuleName] <String[]>] [-Code] [-EditCmdlet] [-FromScripts] [-NoLocal] [-OnlyPublished] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | — | 0 | — | Patrón de búsqueda para filtrar cmdlets 🌐 *Supports wildcards* |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 1 | — | Nombres de módulos GenXdev a buscar 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Omitir la búsqueda en rutas de módulos locales |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Limitar la búsqueda solo a rutas de módulos publicados |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Búsqueda en archivos de script en lugar de archivos de módulo |
| `-Code` | SwitchParameter | — | — | Named | — | Abrir el cmdlet encontrado en Visual Studio Code |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Abrir el cmdlet encontrado en Visual Studio |
| `-EditCmdlet` | SwitchParameter | — | — | Named | — | También abre el archivo en el editor después de encontrarlo |

## Related Links

- [Search-GenXdevCmdlet on GitHub](https://github.com/genXdev/genXdev)
