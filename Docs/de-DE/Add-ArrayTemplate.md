# Add-ArrayTemplate

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** `FormatArray

## Synopsis

> Formatiert eine Sammlung von Objekten mithilfe einer Vorlagenzeichenfolge mit Eigenschaften-Platzhaltern und erzeugt eine einzelne formatierte Zeichenfolge.

## Description

Iteriert über eine Sammlung von Objekten und wendet eine Vorlagenzeichenfolge mit Platzhaltern wie {PropertyName} oder {PropertyName:format} auf jedes Element an. Die formatierten Ergebnisse werden mit einem konfigurierbaren Trennzeichen zusammengefügt. Unterstützt Einrückung, nachfolgende Zeilenumbrüche und nachfolgende Trennzeichen für flexible Ausgabeformatierung.

## Syntax

```powershell
Add-ArrayTemplate -InputObject <Collections.IEnumerable> -Template <String> [[-Delimiter] <String>] [[-Indentation] <Int32>] [-EndDelimiter] [-NewLine] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Collections.IEnumerable | ✅ | ✅ (ByValue) | 0 | — | Die Sammlung von zu formatierenden Objekten |
| `-Template` | String | ✅ | — | 1 | — | Die Vorlagenzeichenfolge mit Platzhaltern wie {PropertyName} oder {PropertyName:Format} |
| `-Delimiter` | String | — | — | 2 | `"`n"` | Der Trennzeichen-String, der zwischen die formatierten Elemente eingefügt werden soll |
| `-Indentation` | Int32 | — | — | 3 | `0` | Die Anzahl der Einrückungsebenen (4 Leerzeichen pro Ebene), die angewendet werden sollen |
| `-NewLine` | SwitchParameter | — | — | Named | `$false` | Hängt ein abschließendes Trennzeichen nach dem letzten Element an |
| `-EndDelimiter` | SwitchParameter | — | — | Named | `$false` | Add delimiter at end when array not empty |

## Examples

### @(     @{ Name = "Alice"; Age = 30 }     @{ Name = "Bob"; Age = 25 } ) | Add-ArrayTemplate -Template "{Name} is {Age} years old"

```powershell
@(
    @{ Name = "Alice"; Age = 30 }
    @{ Name = "Bob"; Age = 25 }
) | Add-ArrayTemplate -Template "{Name} is {Age} years old"
```

Name: Alice
Alter: 30

Name: Bob
Alter: 25

Formatiert ein Array von Hashtabellen mit Eigenschaftsplatzhaltern.

### $items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1

```powershell
$items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1
```

Verwendet den FormatArray-Alias mit Einrückung und einem benutzerdefinierten Trennzeichen.

## Outputs

- `String`

## Related Links

- [Add-ArrayTemplate on GitHub](https://github.com/genXdev/genXdev)
