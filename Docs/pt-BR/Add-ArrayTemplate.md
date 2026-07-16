# Add-ArrayTemplate

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** `FormatArray

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Add-ArrayTemplate -InputObject <Collections.IEnumerable> -Template <String> [[-Delimiter] <String>] [[-Indentation] <Int32>] [-NewLine] [-EndDelimiter] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Collections.IEnumerable | ✅ | ✅ (ByValue) | 0 | — | A coleção de objetos a serem formatados |
| `-Template` | String | ✅ | — | 1 | — | A string de modelo com placeholders {PropertyName} ou {PropertyName:format} |
| `-Delimiter` | String | — | — | 2 | `"`n"` | A string de delimitador a ser inserida entre itens formatados |
| `-Indentation` | Int32 | — | — | 3 | `0` | O número de níveis de indentação (4 espaços por nível) a ser aplicado |
| `-NewLine` | SwitchParameter | — | — | 4 | `$false` | Adiciona um delimitador final após o último item |
| `-EndDelimiter` | SwitchParameter | — | — | 5 | `$false` | Add delimiter at the end when the array is not empty |

## Outputs

- `String`

## Related Links

- [Add-ArrayTemplate on GitHub](https://github.com/genXdev/genXdev)
