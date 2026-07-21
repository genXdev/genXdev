# Add-ArrayTemplate

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** `FormatArray`

## Synopsis

> Formate une collection d'objets à l'aide d'un modèle de chaîne avec des espaces réservés pour les propriétés, produisant une chaîne formatée unique.

## Description

Parcourt une collection d'objets et applique une chaîne de modèle avec des espaces réservés {NomPropriété} ou {NomPropriété:format} à chaque élément. Les résultats formatés sont joints avec un délimiteur configurable. Prend en charge l'indentation, les retours à la ligne de fin et les délimiteurs de fin pour un formatage flexible de la sortie.

## Syntax

```powershell
Add-ArrayTemplate -InputObject <Collections.IEnumerable> -Template <String> [[-Delimiter] <String>] [[-Indentation] <Int32>] [-EndDelimiter] [-NewLine] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Collections.IEnumerable | ✅ | ✅ (ByValue) | 0 | — | La collection d'objets à mettre en forme |
| `-Template` | String | ✅ | — | 1 | — | Le modèle de chaîne avec les espaces réservés {PropertyName} ou {PropertyName:format} |
| `-Delimiter` | String | — | — | 2 | `"`n"` | La chaîne de séparation à insérer entre les éléments formatés |
| `-Indentation` | Int32 | — | — | 3 | `0` | Le nombre de niveaux d'indentation (4 espaces par niveau) à appliquer |
| `-NewLine` | SwitchParameter | — | — | Named | `$false` | Ajoute un délimiteur de fin après le dernier élément |
| `-EndDelimiter` | SwitchParameter | — | — | Named | `$false` | Ajouter un délimiteur à la fin lorsque le tableau n'est pas vide |

## Examples

### @(     @{ Name = "Alice"; Age = 30 }     @{ Name = "Bob"; Age = 25 } ) | Add-ArrayTemplate -Template "{Name} is {Age} years old"

```powershell
@(
    @{ Name = "Alice"; Age = 30 }
    @{ Name = "Bob"; Age = 25 }
) | Add-ArrayTemplate -Template "{Name} is {Age} years old"
```

Nom : Alice
Âge : 30

Nom : Bob
Âge : 25

Formate un tableau de tables de hachage avec des espaces réservés de propriété.

### $items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1

```powershell
$items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1
```

Utilise l'alias FormatArray avec l'indentation et un délimiteur personnalisé.

## Parameter Details

### `-InputObject <Collections.IEnumerable>`

> La collection d'objets à mettre en forme

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

> Le modèle de chaîne avec les espaces réservés {PropertyName} ou {PropertyName:format}

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

> La chaîne de séparation à insérer entre les éléments formatés

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

> Le nombre de niveaux d'indentation (4 espaces par niveau) à appliquer

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

> Ajoute un délimiteur de fin après le dernier élément

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

> Ajouter un délimiteur à la fin lorsque le tableau n'est pas vide

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

- [Remove-DoubleEmptyLines](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRRemove-DoubleEmptyLines.md)
