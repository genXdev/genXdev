# Remove-DoubleEmptyLines

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** —

## Synopsis

> Verwijdert dubbele (opeenvolgende) lege regels uit een codestring, optioneel de uitvoer herformatterend.

## Description

Maakt broncode of tekst op door opeenvolgende lege regels te comprimeren tot een enkele lege regel. Dit verbetert de leesbaarheid en volgt gangbare codeopmaakconventies. Wanneer de -Reformat-schakelaar is opgegeven, worden er aanvullende opmaakregels toegepast om de codestructuur te normaliseren.

## Syntax

```powershell
Remove-DoubleEmptyLines -code <String> [-Reformat] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-code` | String | ✅ | — | 0 | — | De broncode of tekstreeks om te verwerken voor het verwijderen van dubbele lege regels |
| `-Reformat` | SwitchParameter | — | — | Named | — | Pas extra opmaakregels toe naast het verwijderen van dubbele lege regels |

## Examples

### $cleanCode = $sourceCode | Remove-DoubleEmptyLines

```powershell
$cleanCode = $sourceCode | Remove-DoubleEmptyLines
```

Pipes broncode door de functie om opeenvolgende lege regels te verwijderen.

### Remove-DoubleEmptyLines -code $sourceCode -Reformat

```powershell
Remove-DoubleEmptyLines -code $sourceCode -Reformat
```

Verwijdert dubbele lege regels en past extra opmaak toe.

## Outputs

- `String`

## Related Links

- [Remove-DoubleEmptyLines on GitHub](https://github.com/genXdev/genXdev)
