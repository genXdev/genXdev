# Remove-DoubleEmptyLines

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** —

## Synopsis

> Remove linhas vazias duplas (consecutivas) de uma string de código, opcionalmente reformatando a saída.

## Description

Limpa o código-fonte ou texto, colapsando linhas em branco consecutivas em uma única linha vazia. Isso melhora a legibilidade e segue convenções comuns de formatação de código. Quando o parâmetro -Reformat é especificado, regras de formatação adicionais são aplicadas para normalizar a estrutura do código.

## Syntax

```powershell
Remove-DoubleEmptyLines -code <String> [-Reformat] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-code` | String | ✅ | — | 0 | — | O código-fonte ou string de texto a ser processada para remoção de linhas vazias duplas |
| `-Reformat` | SwitchParameter | — | — | Named | — | Aplicar regras de formatação adicionais além da remoção de linhas duplas vazias |

## Examples

### $cleanCode = $sourceCode | Remove-DoubleEmptyLines

```powershell
$cleanCode = $sourceCode | Remove-DoubleEmptyLines
```

Pipes o código fonte através da função para remover linhas em branco consecutivas.

### Remove-DoubleEmptyLines -code $sourceCode -Reformat

```powershell
Remove-DoubleEmptyLines -code $sourceCode -Reformat
```

Remove linhas duplas em branco e aplica formatação adicional.

## Parameter Details

### `-code <String>`

> O código-fonte ou string de texto a ser processada para remoção de linhas vazias duplas

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Reformat`

> Aplicar regras de formatação adicionais além da remoção de linhas duplas vazias

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `String`

## Related Links

- [Add-ArrayTemplate](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Add-ArrayTemplate.md)
