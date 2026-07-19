# Add-ArrayTemplate

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** `FormatArray

## Synopsis

> Formate une collection d'objets en utilisant une chaîne modèle avec des espaces réservés pour les propriétés, produisant une seule chaîne formatée.

## Description

Parcourt une collection d'objets et applique à chaque élément une chaîne modèle avec les espaces réservés {PropertyName} ou {PropertyName:format}. Les résultats formatés sont joints avec un délimiteur configurable. Prend en charge l'indentation, les sauts de ligne de fin et les délimiteurs de fin pour un formatage de sortie flexible.

## Syntax

```powershell
Add-ArrayTemplate -InputObject <Collections.IEnumerable> -Template <String> [[-Delimiter] <String>] [[-Indentation] <Int32>] [-EndDelimiter] [-NewLine] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Collections.IEnumerable | ✅ | ✅ (ByValue) | 0 | — | La collection d'objets à formater |
| `-Template` | String | ✅ | — | 1 | — | The template string with {PropertyName} or {PropertyName:format} placeholders |
| `-Delimiter` | String | — | — | 2 | `"`n"` | La chaîne de délimitation à insérer entre les éléments formatés |
| `-Indentation` | Int32 | — | — | 3 | `0` | Le nombre de niveaux d'indentation (4 espaces par niveau) à appliquer |
| `-NewLine` | SwitchParameter | — | — | Named | `$false` | Appends a trailing delimiter after the final item |
| `-EndDelimiter` | SwitchParameter | — | — | Named | `$false` | Add delimiter at end when array not empty |

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

Utilise l'alias FormatArray avec une indentation et un délimiteur personnalisé.

## Outputs

- `String`

## Related Links

- [Add-ArrayTemplate on GitHub](https://github.com/genXdev/genXdev)
