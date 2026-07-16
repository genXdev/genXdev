# WriteFileOutput

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
WriteFileOutput -CallerInvocation <Object> -Input <Object> [-FullPaths] [-Prefix <String>] [-RelativeBasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CallerInvocation` | Object | ✅ | ✅ (ByValue) | 0 | — | As informações de invocação da função chamadora |
| `-Input` | Object | ✅ | ✅ (ByValue) | 1 | — | The input object to process, which can be a file path or object |
| `-Prefix` | String | — | — | Named | — | Um prefixo de string opcional para ser adicionado à saída exibida para contexto adicional |
| `-RelativeBasePath` | String | — | — | Named | — | Caminho base para gerar caminhos de arquivo relativos na saída |
| `-FullPaths` | SwitchParameter | — | — | Named | — | Força a saída a usar caminhos absolutos completos em vez de caminhos relativos |

## Related Links

- [WriteFileOutput on GitHub](https://github.com/genXdev/genXdev)
