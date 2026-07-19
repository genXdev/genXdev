# Add-ArrayTemplate

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** `FormatArray

## Synopsis

> Formatteert een verzameling objecten met behulp van een sjabloonstring met eigenschapsplaatshouders, wat resulteert in een enkele opgemaakte string.

## Description

Itereert over een verzameling objecten en past op elk item een sjabloonstring toe met {PropertyName} of {PropertyName:format} plaatsaanduidingen. De opgemaakte resultaten worden samengevoegd met een configureerbaar scheidingsteken. Ondersteunt inspringing, afsluitende nieuwe regels en afsluitende scheidingstekens voor flexibele uitvoeropmaak.

## Syntax

```powershell
Add-ArrayTemplate -InputObject <Collections.IEnumerable> -Template <String> [[-Delimiter] <String>] [[-Indentation] <Int32>] [-EndDelimiter] [-NewLine] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Collections.IEnumerable | ✅ | ✅ (ByValue) | 0 | — | De verzameling objecten om te formatteren |
| `-Template` | String | ✅ | — | 1 | — | The template string with {PropertyName} or {PropertyName:format} placeholders |
| `-Delimiter` | String | — | — | 2 | `"`n"` | De scheidingstekenreeks die tussen opgemaakte items moet worden ingevoegd |
| `-Indentation` | Int32 | — | — | 3 | `0` | Het aantal inspringniveaus (4 spaties per niveau) om toe te passen |
| `-NewLine` | SwitchParameter | — | — | Named | `$false` | Voegt een afsluitend scheidingsteken toe na het laatste item |
| `-EndDelimiter` | SwitchParameter | — | — | Named | `$false` | Add delimiter at end when array not empty |

## Examples

### @(     @{ Name = "Alice"; Age = 30 }     @{ Name = "Bob"; Age = 25 } ) | Add-ArrayTemplate -Template "{Name} is {Age} years old"

```powershell
@(
    @{ Name = "Alice"; Age = 30 }
    @{ Name = "Bob"; Age = 25 }
) | Add-ArrayTemplate -Template "{Name} is {Age} years old"
```

Naam: Alice
Leeftijd: 30

Naam: Bob
Leeftijd: 25

Formateer een array van hashtabellen met eigenschapsplaatshouders.

### $items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1

```powershell
$items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1
```

Gebruikt het FormatArray alias met inspringing en een aangepaste scheidingsteken.

## Outputs

- `String`

## Related Links

- [Add-ArrayTemplate on GitHub](https://github.com/genXdev/genXdev)
