# Remove-DoubleEmptyLines

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** —

## Synopsis

> Verwijdert dubbele (opeenvolgende) lege regels uit een coderegel, optioneel met herformattering van de uitvoer.

## Description

Maakt broncode of tekst schoon door opeenvolgende lege regels samen te voegen tot een enkele lege regel. Dit verbetert de leesbaarheid en volgt algemene code-opmaakconventies. Wanneer de -Reformat-schakelaar is opgegeven, worden extra opmaakregels toegepast om de codestructuur te normaliseren.

## Syntax

```powershell
Remove-DoubleEmptyLines -code <String> [-Reformat] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-code` | String | ✅ | — | 0 | — | De broncode of tekstreeks om te verwerken voor het verwijderen van dubbele lege regels |
| `-Reformat` | SwitchParameter | — | — | Named | — | Pas aanvullende opmaakregels toe naast het verwijderen van dubbele lege regels |

## Examples

### $cleanCode = $sourceCode | Remove-DoubleEmptyLines

```powershell
$cleanCode = $sourceCode | Remove-DoubleEmptyLines
```

Leidt broncode door de functie om opeenvolgende lege regels te verwijderen.

### Remove-DoubleEmptyLines -code $sourceCode -Reformat

```powershell
Remove-DoubleEmptyLines -code $sourceCode -Reformat
```

Verwijdert dubbele lege regels en past extra opmaak toe.

## Parameter Details

### `-code <String>`

> De broncode of tekstreeks om te verwerken voor het verwijderen van dubbele lege regels

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

> Pas aanvullende opmaakregels toe naast het verwijderen van dubbele lege regels

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

- [Add-ArrayTemplate](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Add-ArrayTemplate.md)
