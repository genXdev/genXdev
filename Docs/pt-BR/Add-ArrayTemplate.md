# Add-ArrayTemplate

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** `FormatArray`

## Synopsis

> Formata uma coleção de objetos usando uma string de modelo com espaços reservados para propriedades, produzindo uma única string formatada.

## Description

Itera sobre uma coleção de objetos e aplica uma string de modelo com placeholders {NomePropriedade} ou {NomePropriedade:formato} a cada item. Os resultados formatados são unidos com um delimitador configurável. Suporta recuo, novas linhas finais e delimitadores finais para formatação flexível de saída.

## Syntax

```powershell
Add-ArrayTemplate -InputObject <Collections.IEnumerable> -Template <String> [[-Delimiter] <String>] [[-Indentation] <Int32>] [-EndDelimiter] [-NewLine] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Collections.IEnumerable | ✅ | ✅ (ByValue) | 0 | — | A coleção de objetos a serem formatados |
| `-Template` | String | ✅ | — | 1 | — | A string de modelo com espaços reservados {PropertyName} ou {PropertyName:format} |
| `-Delimiter` | String | — | — | 2 | `"`n"` | A string delimitadora a ser inserida entre itens formatados |
| `-Indentation` | Int32 | — | — | 3 | `0` | O número de níveis de indentação (4 espaços por nível) a ser aplicado |
| `-NewLine` | SwitchParameter | — | — | Named | `$false` | Anexa um delimitador final após o último item |
| `-EndDelimiter` | SwitchParameter | — | — | Named | `$false` | Adicionar delimitador no final quando a matriz não estiver vazia |

## Examples

### @(     @{ Name = "Alice"; Age = 30 }     @{ Name = "Bob"; Age = 25 } ) | Add-ArrayTemplate -Template "{Name} is {Age} years old"

```powershell
@(
    @{ Name = "Alice"; Age = 30 }
    @{ Name = "Bob"; Age = 25 }
) | Add-ArrayTemplate -Template "{Name} is {Age} years old"
```

Formata uma array de hashtables com placeholders de propriedade.

Nome: Alice
Idade: 30

Nome: Bob
Idade: 25

### $items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1

```powershell
$items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1
```

Usa o alias FormatArray com indentação e um delimitador personalizado.

## Parameter Details

### `-InputObject <Collections.IEnumerable>`

> A coleção de objetos a serem formatados

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Template <String>`

> A string de modelo com espaços reservados {PropertyName} ou {PropertyName:format}

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Delimiter <String>`

> A string delimitadora a ser inserida entre itens formatados

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `"`n"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Indentation <Int32>`

> O número de níveis de indentação (4 espaços por nível) a ser aplicado

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NewLine`

> Anexa um delimitador final após o último item

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EndDelimiter`

> Adicionar delimitador no final quando a matriz não estiver vazia

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `String`

## Related Links

- [Remove-DoubleEmptyLines](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Remove-DoubleEmptyLines.md)
