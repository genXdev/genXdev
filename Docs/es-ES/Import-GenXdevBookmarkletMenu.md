# Import-GenXdevBookmarkletMenu

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Import-GenXdevBookmarkletMenu on GitHub](https://github.com/genXdev/genXdev)
