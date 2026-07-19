# Remove-DoubleEmptyLines

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** —

## Synopsis

> Remove linhas vazias duplas (consecutivas) de uma string de código, opcionalmente reformatando a saída.

## Description

Limpa código-fonte ou texto ao colapsar linhas em branco consecutivas em uma única linha vazia. Isso melhora a legibilidade e segue convenções comuns de formatação de código. Quando a opção -Reformat é especificada, regras adicionais de formatação são aplicadas para normalizar a estrutura do código.

## Syntax

```powershell
Remove-DoubleEmptyLines -code <String> [-Reformat] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-code` | String | ✅ | — | 0 | — | O código-fonte ou string de texto a ser processado para remoção de linhas duplas vazias |
| `-Reformat` | SwitchParameter | — | — | Named | — | Aplique regras de formatação adicionais além da remoção de linhas duplas vazias |

## Examples

### $cleanCode = $sourceCode | Remove-DoubleEmptyLines

```powershell
$cleanCode = $sourceCode | Remove-DoubleEmptyLines
```

Pipes o código-fonte através da função para remover linhas em branco consecutivas.

### Remove-DoubleEmptyLines -code $sourceCode -Reformat

```powershell
Remove-DoubleEmptyLines -code $sourceCode -Reformat
```

Remove linhas duplas vazias e aplica formatação adicional.

## Outputs

- `String`

## Related Links

- [Remove-DoubleEmptyLines on GitHub](https://github.com/genXdev/genXdev)
