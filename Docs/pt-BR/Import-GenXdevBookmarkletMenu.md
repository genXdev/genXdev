# Import-GenXdevBookmarkletMenu

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Importa os favoritos JavaScript do GenXdev nas coleções de favoritos do navegador.

## Description

Esta função varre um diretório em busca de arquivos de bookmarklet GenXdev com a extensão

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

## Examples

### Import-GenXdevBookmarkletMenu -Edge

```powershell
Import-GenXdevBookmarkletMenu -Edge
```

Importa todos os arquivos de bookmarklet do diretório de snippets padrão para a pasta de favoritos do Microsoft Edge.

### Import-GenXdevBookmarkletMenu -SnippetsPath "C:\MyBookmarklets" -Chrome -WhatIf

```powershell
Import-GenXdevBookmarkletMenu -SnippetsPath "C:\MyBookmarklets" -Chrome -WhatIf
```

Mostra quais bookmarklets seriam importados do caminho especificado para o Google Chrome sem realmente realizar a operação de importação.

## Related Links

- [Import-GenXdevBookmarkletMenu on GitHub](https://github.com/genXdev/genXdev)
