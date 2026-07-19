# Remove-DoubleEmptyLines

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** —

## Synopsis

> Supprime les lignes vides doubles (consécutives) d'une chaîne de code, en reformatant éventuellement la sortie.

## Description

Nettoie le code source ou le texte en réduisant les lignes vides consécutives en une seule ligne vide. Cela améliore la lisibilité et suit les conventions de formatage de code courantes. Lorsque le commutateur -Reformat est spécifié, des règles de formatage supplémentaires sont appliquées pour normaliser la structure du code.

## Syntax

```powershell
Remove-DoubleEmptyLines -code <String> [-Reformat] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-code` | String | ✅ | — | 0 | — | Le code source ou la chaîne de texte à traiter pour la suppression des lignes vides doubles |
| `-Reformat` | SwitchParameter | — | — | Named | — | You are a helpful assistant designed to output JSON.
## Response Format

Reply with JSON object ONLY. |

## Examples

### $cleanCode = $sourceCode | Remove-DoubleEmptyLines

```powershell
$cleanCode = $sourceCode | Remove-DoubleEmptyLines
```

Transmets le code source à la fonction pour supprimer les lignes vides consécutives.

### Remove-DoubleEmptyLines -code $sourceCode -Reformat

```powershell
Remove-DoubleEmptyLines -code $sourceCode -Reformat
```

Supprime les doubles lignes vides et applique un formatage supplémentaire.

## Outputs

- `String`

## Related Links

- [Remove-DoubleEmptyLines on GitHub](https://github.com/genXdev/genXdev)
