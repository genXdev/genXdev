# Add-ArrayTemplate

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** `FormatArray`

## Synopsis

> Formatteert een verzameling objecten met behulp van een sjabloonreeks met eigenschapsaanduidingen, wat resulteert in één enkele opgemaakte reeks.

## Description

Doorloopt een verzameling objecten en past een sjabloonreeks met
{PropertyName} of {PropertyName:format} plaatsaanduidingen toe op elk item. De
opgemaakte resultaten worden samengevoegd met een configureerbaar scheidingsteken.
Ondersteunt inspringing, afsluitende nieuwe regels en afsluitende scheidingstekens voor
flexibele uitvoeropmaak.

## Syntax

```powershell
Add-ArrayTemplate -InputObject <Collections.IEnumerable> -Template <String> [[-Delimiter] <String>] [[-Indentation] <Int32>] [-EndDelimiter] [-NewLine] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Collections.IEnumerable | ✅ | ✅ (ByValue) | 0 | — | De verzameling objecten om op te maken |
| `-Template` | String | ✅ | — | 1 | — | De sjabloontekenreeks met {PropertyName} of {PropertyName:formaat} plaatsaanduidingen |
| `-Delimiter` | String | — | — | 2 | `"`n"` | Het scheidingsteken dat tussen opgemaakte items moet worden ingevoegd |
| `-Indentation` | Int32 | — | — | 3 | `0` | Het aantal inspringniveaus (4 spaties per niveau) dat moet worden toegepast |
| `-NewLine` | SwitchParameter | — | — | Named | `$false` | Voegt een afsluitende scheidingsteken toe na het laatste item |
| `-EndDelimiter` | SwitchParameter | — | — | Named | `$false` | Voeg scheidingsteken toe aan het einde wanneer de array niet leeg is |

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

Maakt een matrix van hashtabellen met eigenschapsaanduidingen.

### $items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1

```powershell
$items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1
```

Gebruikt het FormaatMatrix-alias met inspringing en een aangepaste scheidingsteken.

## Parameter Details

### `-InputObject <Collections.IEnumerable>`

> De verzameling objecten om op te maken

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

> De sjabloontekenreeks met {PropertyName} of {PropertyName:formaat} plaatsaanduidingen

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

> Het scheidingsteken dat tussen opgemaakte items moet worden ingevoegd

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

> Het aantal inspringniveaus (4 spaties per niveau) dat moet worden toegepast

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

> Voegt een afsluitende scheidingsteken toe na het laatste item

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

> Voeg scheidingsteken toe aan het einde wanneer de array niet leeg is

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

- [Remove-DoubleEmptyLines](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Remove-DoubleEmptyLines.md)
