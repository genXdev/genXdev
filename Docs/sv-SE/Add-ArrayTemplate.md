# Add-ArrayTemplate

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** `FormatArray`

## Synopsis

> Formaterar en samling objekt med hjälp av en mallsträng med egenskapsplatshållare, vilket producerar en enda formaterad sträng.

## Description

Går igenom en samling objekt och tillämpar en mallsträng med
{PropertyName} eller {PropertyName:format}-platshållare på varje objekt. De
formaterade resultaten sammanfogas med ett konfigurerbart avgränsningstecken. Stöder
indragning, avslutande radbrytningar och avslutande avgränsningstecken för flexibel utdataformatering.

## Syntax

```powershell
Add-ArrayTemplate -InputObject <Collections.IEnumerable> -Template <String> [[-Delimiter] <String>] [[-Indentation] <Int32>] [-EndDelimiter] [-NewLine] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Collections.IEnumerable | ✅ | ✅ (ByValue) | 0 | — | Samlingen av objekt att formatera |
| `-Template` | String | ✅ | — | 1 | — | Mallsträngen med {PropertyName} eller {PropertyName:format} platshållare |
| `-Delimiter` | String | — | — | 2 | `"`n"` | Avgränsningssträngen som ska infogas mellan formaterade objekt |
| `-Indentation` | Int32 | — | — | 3 | `0` | Antalet indenteringsnivåer (4 mellanslag per nivå) som ska tillämpas |
| `-NewLine` | SwitchParameter | — | — | Named | `$false` | Lägger till en avslutande avgränsare efter det sista objektet |
| `-EndDelimiter` | SwitchParameter | — | — | Named | `$false` | Lägg till avgränsare i slutet när arrayen inte är tom |

## Examples

### @(     @{ Name = "Alice"; Age = 30 }     @{ Name = "Bob"; Age = 25 } ) | Add-ArrayTemplate -Template "{Name} is {Age} years old"

```powershell
@(
    @{ Name = "Alice"; Age = 30 }
    @{ Name = "Bob"; Age = 25 }
) | Add-ArrayTemplate -Template "{Name} is {Age} years old"
```

Formaterar en matris med hashtabeller med egenskapsplatshållare.

### $items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1

```powershell
$items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1
```

Använder FormatArray-aliaset med indrag och en anpassad avgränsare.

## Parameter Details

### `-InputObject <Collections.IEnumerable>`

> Samlingen av objekt att formatera

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

> Mallsträngen med {PropertyName} eller {PropertyName:format} platshållare

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

> Avgränsningssträngen som ska infogas mellan formaterade objekt

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

> Antalet indenteringsnivåer (4 mellanslag per nivå) som ska tillämpas

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

> Lägger till en avslutande avgränsare efter det sista objektet

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

> Lägg till avgränsare i slutet när arrayen inte är tom

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

- [Remove-DoubleEmptyLines](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Remove-DoubleEmptyLines.md)
