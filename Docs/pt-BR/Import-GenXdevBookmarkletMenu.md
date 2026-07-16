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
| `-SnippetsPath` | String | — | — | 0 | `"$($MyInvocation.MyCommand.Module.ModuleBase)\Bookmarklets"` | Caminho para o diretório contendo os arquivos de snippet de bookmarklet |
| `-TargetFolder` | String | — | — | 1 | `""` | Pasta de favoritos de destino na estrutura de favoritos do navegador |
| `-Edge` | SwitchParameter | — | — | Named | — | Importar bookmarklets no navegador Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Importe bookmarklets no navegador Google Chrome |
| `-Firefox` | SwitchParameter | — | — | Named | — | Importe bookmarklets no navegador Mozilla Firefox |

## Related Links

- [Import-GenXdevBookmarkletMenu on GitHub](https://github.com/genXdev/genXdev)
