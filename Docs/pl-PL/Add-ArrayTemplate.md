# Add-ArrayTemplate

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** `FormatArray`

## Synopsis

> Formatuje kolekcję obiektów przy użyciu ciągu szablonowego z symbolami zastępczymi właściwości, tworząc pojedynczy sformatowany ciąg.

## Description

Iteruje po kolekcji obiektów i stosuje szablon tekstowy z symbolami zastępczymi {PropertyName} lub {PropertyName:format} do każdego elementu. Sformatowane wyniki są łączone z konfigurowalnym separatorem. Obsługuje wcięcia, końcowe znaki nowej linii i końcowe separatory dla elastycznego formatowania wyjścia.

## Syntax

```powershell
Add-ArrayTemplate -InputObject <Collections.IEnumerable> -Template <String> [[-Delimiter] <String>] [[-Indentation] <Int32>] [-EndDelimiter] [-NewLine] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Collections.IEnumerable | ✅ | ✅ (ByValue) | 0 | — | Kolekcja obiektów do sformatowania |
| `-Template` | String | ✅ | — | 1 | — | Ciąg szablonu z symbolami zastępczymi {PropertyName} lub {PropertyName:format} |
| `-Delimiter` | String | — | — | 2 | `"`n"` | Ciąg znaków używany jako separator między sformatowanymi elementami |
| `-Indentation` | Int32 | — | — | 3 | `0` | Liczba poziomów wcięcia (4 spacje na każdy poziom) do zastosowania |
| `-NewLine` | SwitchParameter | — | — | Named | `$false` | Dodaje końcowy ogranicznik po ostatnim elemencie |
| `-EndDelimiter` | SwitchParameter | — | — | Named | `$false` | Dodaj ogranicznik na końcu, gdy tablica nie jest pusta |

## Examples

### @(     @{ Name = "Alice"; Age = 30 }     @{ Name = "Bob"; Age = 25 } ) | Add-ArrayTemplate -Template "{Name} is {Age} years old"

```powershell
@(
    @{ Name = "Alice"; Age = 30 }
    @{ Name = "Bob"; Age = 25 }
) | Add-ArrayTemplate -Template "{Name} is {Age} years old"
```

Nazwa: Alicja
Wiek: 30

Nazwa: Robert
Wiek: 25

Formatuje tablicę hashtabul z symbolami zastępczymi właściwości.

### $items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1

```powershell
$items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1
```

Używa aliasu FormatArray z wcięciem i niestandardowym separatorem.

## Parameter Details

### `-InputObject <Collections.IEnumerable>`

> Kolekcja obiektów do sformatowania

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

> Ciąg szablonu z symbolami zastępczymi {PropertyName} lub {PropertyName:format}

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

> Ciąg znaków używany jako separator między sformatowanymi elementami

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

> Liczba poziomów wcięcia (4 spacje na każdy poziom) do zastosowania

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

> Dodaje końcowy ogranicznik po ostatnim elemencie

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

> Dodaj ogranicznik na końcu, gdy tablica nie jest pusta

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

- [Remove-DoubleEmptyLines](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Remove-DoubleEmptyLines.md)
