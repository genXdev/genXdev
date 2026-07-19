# Add-ArrayTemplate

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** `FormatArray

## Synopsis

> Formata uma coleção de objetos usando uma string de modelo com espaços reservados para propriedades, produzindo uma única string formatada.

## Description

Itera sobre uma coleção de objetos e aplica uma string de modelo com espaços reservados {PropertyName} ou {PropertyName:format} para cada item. Os resultados formatados são unidos com um delimitador configurável. Suporta indentação, quebras de linha finais e delimitadores finais para formatação de saída flexível.

## Syntax

```powershell
Add-ArrayTemplate -InputObject <Collections.IEnumerable> -Template <String> [[-Delimiter] <String>] [[-Indentation] <Int32>] [-EndDelimiter] [-NewLine] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Collections.IEnumerable | ✅ | ✅ (ByValue) | 0 | — | A coleção de objetos a serem formatados |
| `-Template` | String | ✅ | — | 1 | — | A string de modelo com placeholders {PropertyName} ou {PropertyName:format} |
| `-Delimiter` | String | — | — | 2 | `"`n"` | A string de delimitador a ser inserida entre itens formatados |
| `-Indentation` | Int32 | — | — | 3 | `0` | O número de níveis de indentação (4 espaços por nível) a ser aplicado |
| `-NewLine` | SwitchParameter | — | — | Named | `$false` | Adiciona um delimitador final após o último item |
| `-EndDelimiter` | SwitchParameter | — | — | Named | `$false` | Add delimiter at the end when the array is not empty |

## Examples

### @(     @{ Name = "Alice"; Age = 30 }     @{ Name = "Bob"; Age = 25 } ) | Add-ArrayTemplate -Template "{Name} is {Age} years old"

```powershell
@(
    @{ Name = "Alice"; Age = 30 }
    @{ Name = "Bob"; Age = 25 }
) | Add-ArrayTemplate -Template "{Name} is {Age} years old"
```

Nome: Alice
Idade: 30

Nome: Bob
Idade: 25

Formata um array de hashtables com placeholders de propriedade.

### $items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1

```powershell
$items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1
```

Usa o alias FormatArray com indentação e um delimitador personalizado.

## Outputs

- `String`

## Related Links

- [Add-ArrayTemplate on GitHub](https://github.com/genXdev/genXdev)
