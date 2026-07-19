# Remove-JSONComments

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Remove comentários do conteúdo JSON.

## Description

* Processa conteúdo JSON e remove comentários de linha única e multilinha
  preservando a estrutura JSON.
* Útil para limpar arquivos JSON que contêm comentários de documentação
  antes da análise.
* Suporta comentários de linha única (//) e multilinha (/* */).

## Syntax

```powershell
Remove-JSONComments [-Json] <string> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Json` | String | ✅ | — | 0 | — | ["Olá, mundo!", "Isto é um teste", "Outra string"] |

## Examples

### Example 1

```powershell
$jsonContent = @'
{
    // This is a comment
    "name": "test", /* inline comment */
    "value": 123
}
'@ -split "`n"
Remove-JSONComments -Json $jsonContent
```

Remove comentários do conteúdo JSON armazenado em uma variável.

### Example 2

```powershell
$jsonContent | Remove-JSONComments
```

Processa conteúdo JSON do pipeline.

## Related Links

- [Remove-JSONComments on GitHub](https://github.com/genXdev/genXdev)
