# Search-GenXdevCmdlet

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `searchcmdlet

## Synopsis

> Busca un cmdlet de GenXdev y opcionalmente lo abre en un IDE para editar.

## Description

Esta función busca cmdlets de GenXdev usando un patrón y opcionalmente abre el archivo fuente del cmdlet encontrado en Visual Studio Code o Visual Studio para editarlo. Recupera información del cmdlet y proporciona atajos de teclado para navegar rápidamente a la definición de la función.

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

## Examples

### Search-GenXdevCmdlet -CmdletName "Get-*" -Code Opens first matching cmdlet starting with "Get-" in Visual Studio Code.

```powershell
Search-GenXdevCmdlet -CmdletName "Get-*" -Code
Opens first matching cmdlet starting with "Get-" in Visual Studio Code.
```

### searchcmdlet "Set-GitConfig" -EditCmdlet Searches for Set-GitConfig cmdlet and opens it for editing.

```powershell
searchcmdlet "Set-GitConfig" -EditCmdlet
Searches for Set-GitConfig cmdlet and opens it for editing.
```

## Related Links

- [Search-GenXdevCmdlet on GitHub](https://github.com/genXdev/genXdev)
