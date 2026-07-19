# Import-GenXdevBookmarkletMenu

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Importa los bookmarklets JavaScript de GenXdev en las colecciones de marcadores del navegador.

## Description

Esta función escanea un directorio en busca de archivos de bookmarklet de GenXdev con la

## Syntax

```powershell
Import-GenXdevBookmarkletMenu [[-SnippetsPath] <String>] [[-TargetFolder] <String>] [-Chrome] [-Edge] [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SnippetsPath` | String | — | — | 0 | `"$($MyInvocation.MyCommand.Module.ModuleBase)\Bookmarklets"` | Ruta al directorio que contiene los archivos de fragmentos de bookmarklet |
| `-TargetFolder` | String | — | — | 1 | `""` | Carpeta de marcadores de destino en la estructura de marcadores del navegador |
| `-Edge` | SwitchParameter | — | — | Named | — | Importar bookmarklets en el navegador Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Importar marcadores de JavaScript en el navegador Google Chrome |
| `-Firefox` | SwitchParameter | — | — | Named | — | Importar marcadores JavaScript en el navegador Mozilla Firefox |

## Examples

### Import-GenXdevBookmarkletMenu -Edge

```powershell
Import-GenXdevBookmarkletMenu -Edge
```

Importa todos los archivos de marcadores del directorio de fragmentos predeterminado en la carpeta de la barra de marcadores de Microsoft Edge.

### Import-GenXdevBookmarkletMenu -SnippetsPath "C:\MyBookmarklets" -Chrome -WhatIf

```powershell
Import-GenXdevBookmarkletMenu -SnippetsPath "C:\MyBookmarklets" -Chrome -WhatIf
```

Muestra qué bookmarklets se importarían desde la ruta especificada a Google Chrome sin realizar realmente la operación de importación.

## Related Links

- [Import-GenXdevBookmarkletMenu on GitHub](https://github.com/genXdev/genXdev)
