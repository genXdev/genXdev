# Remove-DoubleEmptyLines

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** —

## Synopsis

> Usuwa podwójne (kolejne) puste linie z ciągu kodu, opcjonalnie
przeformatowując wynik.

## Description

Czyści kod źródłowy lub tekst, zastępując kolejne puste wiersze pojedynczą pustą linią. Poprawia to czytelność i jest zgodne z powszechnymi konwencjami formatowania kodu. Gdy określony jest przełącznik -Reformat, stosowane są dodatkowe reguły formatowania w celu normalizacji struktury kodu.

## Syntax

```powershell
Remove-DoubleEmptyLines -code <String> [-Reformat] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-code` | String | ✅ | — | 0 | — | Kod źródłowy lub ciąg tekstowy do przetworzenia w celu usunięcia podwójnych pustych linii |
| `-Reformat` | SwitchParameter | — | — | Named | — | Zastosuj dodatkowe reguły formatowania poza usuwaniem podwójnych pustych wierszy |

## Examples

### $cleanCode = $sourceCode | Remove-DoubleEmptyLines

```powershell
$cleanCode = $sourceCode | Remove-DoubleEmptyLines
```

Przepuszcza kod źródłowy przez funkcję, aby usunąć kolejne puste wiersze.

### Remove-DoubleEmptyLines -code $sourceCode -Reformat

```powershell
Remove-DoubleEmptyLines -code $sourceCode -Reformat
```

Usuwa podwójne puste linie i stosuje dodatkowe formatowanie.

## Parameter Details

### `-code <String>`

> Kod źródłowy lub ciąg tekstowy do przetworzenia w celu usunięcia podwójnych pustych linii

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Reformat`

> Zastosuj dodatkowe reguły formatowania poza usuwaniem podwójnych pustych wierszy

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `String`

## Related Links

- [Add-ArrayTemplate](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Add-ArrayTemplate.md)
