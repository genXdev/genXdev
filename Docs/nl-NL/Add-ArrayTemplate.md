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
| `-InputObject` | Collections.IEnumerable | ✅ | ✅ (ByValue) | 0 | — | De verzameling objecten om te formatteren |
| `-Template` | String | ✅ | — | 1 | — | The template string with {PropertyName} or {PropertyName:format} placeholders |
| `-Delimiter` | String | — | — | 2 | `"`n"` | De scheidingstekenreeks die tussen opgemaakte items moet worden ingevoegd |
| `-Indentation` | Int32 | — | — | 3 | `0` | Het aantal inspringniveaus (4 spaties per niveau) om toe te passen |
| `-NewLine` | SwitchParameter | — | — | 4 | `$false` | Voegt een afsluitend scheidingsteken toe na het laatste item |
| `-EndDelimiter` | SwitchParameter | — | — | 5 | `$false` | Add delimiter at end when array not empty |

## Outputs

- `String`

## Related Links

- [Add-ArrayTemplate on GitHub](https://github.com/genXdev/genXdev)
