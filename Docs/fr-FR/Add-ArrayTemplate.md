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
| `-InputObject` | Collections.IEnumerable | ✅ | ✅ (ByValue) | 0 | — | La collection d'objets à formater |
| `-Template` | String | ✅ | — | 1 | — | The template string with {PropertyName} or {PropertyName:format} placeholders |
| `-Delimiter` | String | — | — | 2 | `"`n"` | La chaîne de délimitation à insérer entre les éléments formatés |
| `-Indentation` | Int32 | — | — | 3 | `0` | Le nombre de niveaux d'indentation (4 espaces par niveau) à appliquer |
| `-NewLine` | SwitchParameter | — | — | 4 | `$false` | Appends a trailing delimiter after the final item |
| `-EndDelimiter` | SwitchParameter | — | — | 5 | `$false` | Add delimiter at end when array not empty |

## Outputs

- `String`

## Related Links

- [Add-ArrayTemplate on GitHub](https://github.com/genXdev/genXdev)
