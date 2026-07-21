# Remove-DoubleEmptyLines

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** —

## Synopsis

> Supprime les lignes vides doubles (consécutives) d'une chaîne de code, avec la possibilité de reformater la sortie.

## Description

Nettoie le code source ou le texte en réduisant les lignes vides consécutives en une seule ligne vide. Cela améliore la lisibilité et suit les conventions de formatage de code courantes. Lorsque le paramètre -Reformat est spécifié, des règles de formatage supplémentaires sont appliquées pour normaliser la structure du code.

## Syntax

```powershell
Remove-DoubleEmptyLines -code <String> [-Reformat] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-code` | String | ✅ | — | 0 | — | Le code source ou la chaîne de texte à traiter pour supprimer les lignes vides doubles |
| `-Reformat` | SwitchParameter | — | — | Named | — | Exemples
--------

    Exemple 1 : Créer un nouveau fichier
    PS C:\> New-Item -Path 'C:\Temp\NouveauFichier.txt' -ItemType 'file'

    Cette commande crée un fichier texte vide à l'emplacement spécifié.

    Exemple 2 : Créer un nouveau dossier
    PS C:\> New-Item -Path 'C:\Temp\NouveauDossier' -ItemType 'directory'

    Cette commande crée un dossier vide à l'emplacement spécifié. |

## Examples

### $cleanCode = $sourceCode | Remove-DoubleEmptyLines

```powershell
$cleanCode = $sourceCode | Remove-DoubleEmptyLines
```

Pipes le code source à travers la fonction pour supprimer les lignes vides consécutives.

### Remove-DoubleEmptyLines -code $sourceCode -Reformat

```powershell
Remove-DoubleEmptyLines -code $sourceCode -Reformat
```

Supprime les lignes vides doubles et applique un formatage supplémentaire.

## Parameter Details

### `-code <String>`

> Le code source ou la chaîne de texte à traiter pour supprimer les lignes vides doubles

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

> Exemples
--------

    Exemple 1 : Créer un nouveau fichier
    PS C:\> New-Item -Path 'C:\Temp\NouveauFichier.txt' -ItemType 'file'

    Cette commande crée un fichier texte vide à l'emplacement spécifié.

    Exemple 2 : Créer un nouveau dossier
    PS C:\> New-Item -Path 'C:\Temp\NouveauDossier' -ItemType 'directory'

    Cette commande crée un dossier vide à l'emplacement spécifié.

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

- [Add-ArrayTemplate](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRAdd-ArrayTemplate.md)
