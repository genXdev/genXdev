# WriteFileOutput

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> Exibe informações do arquivo com nomes de exibição hiperlinkados para uma melhor experiência do usuário.

## Description

Esta função processa objetos de entrada de arquivo e os gera em um formato amigável com nomes de arquivo com hyperlink quando exibidos no console. Ela lida com diferentes tipos de entrada, incluindo strings, objetos FileInfo e outros tipos de objeto. A função detecta automaticamente se a saída está sendo redirecionada ou capturada em um pipeline e ajusta seu comportamento de acordo.

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

## Examples

### WriteFileOutput -CallerInvocation $MyInvocation -Input "C:\temp\file.txt"

```powershell
WriteFileOutput -CallerInvocation $MyInvocation -Input "C:\temp\file.txt"
```

### Get-ChildItem | WriteFileOutput -CallerInvocation $MyInvocation -Input $_

```powershell
Get-ChildItem | WriteFileOutput -CallerInvocation $MyInvocation -Input $_
```

## Related Links

- [WriteFileOutput on GitHub](https://github.com/genXdev/genXdev)
