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
| `-InputObject` | Collections.IEnumerable | ✅ | ✅ (ByValue) | 0 | — | Die Sammlung von zu formatierenden Objekten |
| `-Template` | String | ✅ | — | 1 | — | Die Vorlagenzeichenfolge mit Platzhaltern wie {PropertyName} oder {PropertyName:Format} |
| `-Delimiter` | String | — | — | 2 | `"`n"` | Der Trennzeichen-String, der zwischen die formatierten Elemente eingefügt werden soll |
| `-Indentation` | Int32 | — | — | 3 | `0` | Die Anzahl der Einrückungsebenen (4 Leerzeichen pro Ebene), die angewendet werden sollen |
| `-NewLine` | SwitchParameter | — | — | 4 | `$false` | Hängt ein abschließendes Trennzeichen nach dem letzten Element an |
| `-EndDelimiter` | SwitchParameter | — | — | 5 | `$false` | Add delimiter at end when array not empty |

## Outputs

- `String`

## Related Links

- [Add-ArrayTemplate on GitHub](https://github.com/genXdev/genXdev)
