# Add-ArrayTemplate

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** `FormatArray`

## Synopsis

> Formatiert eine Auflistung von Objekten mithilfe einer Vorlagenzeichenfolge mit Eigenschaftsplatzhaltern und erzeugt eine einzelne formatierte Zeichenfolge.

## Description

Iteriert über eine Auflistung von Objekten und wendet eine Vorlagenzeichenfolge mit {PropertyName}- oder {PropertyName:format}-Platzhaltern auf jedes Element an. Die formatierten Ergebnisse werden mit einem konfigurierbaren Trennzeichen zusammengeführt. Unterstützt Einrückung, nachfolgende Zeilenumbrüche und nachfolgende Trennzeichen für eine flexible Ausgabeformatierung.

## Syntax

```powershell
Add-ArrayTemplate -InputObject <Collections.IEnumerable> -Template <String> [[-Delimiter] <String>] [[-Indentation] <Int32>] [-EndDelimiter] [-NewLine] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Collections.IEnumerable | ✅ | ✅ (ByValue) | 0 | — | Die Sammlung von zu formatierenden Objekten |
| `-Template` | String | ✅ | — | 1 | — | Die Vorlagenzeichenfolge mit {PropertyName}- oder {PropertyName:format}-Platzhaltern |
| `-Delimiter` | String | — | — | 2 | `"`n"` | Die Trennzeichenfolge, die zwischen formatierte Elemente eingefügt werden soll |
| `-Indentation` | Int32 | — | — | 3 | `0` | Die Anzahl der Einrückungsebenen (4 Leerzeichen pro Ebene) anzuwenden |
| `-NewLine` | SwitchParameter | — | — | Named | `$false` | Fügt nach dem letzten Element ein abschließendes Trennzeichen an |
| `-EndDelimiter` | SwitchParameter | — | — | Named | `$false` | Trennzeichen am Ende hinzufügen, wenn das Array nicht leer ist |

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

Formatiert ein Array von Hashtabellen mit Platzhaltern für Eigenschaften.

### $items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1

```powershell
$items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1
```

Verwendet den FormatArray-Alias mit Einrückung und einem benutzerdefinierten Trennzeichen.

## Parameter Details

### `-InputObject <Collections.IEnumerable>`

> Die Sammlung von zu formatierenden Objekten

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

> Die Vorlagenzeichenfolge mit {PropertyName}- oder {PropertyName:format}-Platzhaltern

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

> Die Trennzeichenfolge, die zwischen formatierte Elemente eingefügt werden soll

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

> Die Anzahl der Einrückungsebenen (4 Leerzeichen pro Ebene) anzuwenden

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

> Fügt nach dem letzten Element ein abschließendes Trennzeichen an

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

> Trennzeichen am Ende hinzufügen, wenn das Array nicht leer ist

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

- [Remove-DoubleEmptyLines](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-DoubleEmptyLines.md)
