# Get-BCP47LanguageDictionary

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Renvoie un dictionnaire de toutes les balises de langue BCP 47 installées et leurs noms d'affichage.

## Description

* Crée un dictionnaire qui associe les codes de culture BCP 47 (par exemple en-US, nl-NL, de-DE) à eux-mêmes et leurs noms d'affichage en anglais aux codes.
* Utilise l'API .NET CultureInfo pour énumérer toutes les cultures spécifiques installées sur le système, ce qui en fait la source de vérité faisant autorité pour les noms de dossiers de langue d'aide PowerShell et les langues cibles de traduction.
* Les clés du dictionnaire incluent :
  - Les balises BCP 47 complètes (par exemple "en-US", "nl-NL", "zh-Hans-CN")
  - Les noms d'affichage en anglais (par exemple "English (United States)", "Dutch (Netherlands)")
  - Les noms de langues simples associés à leur région la plus courante (par exemple "English" -> "en-US", "Dutch" -> "nl-NL")

## Syntax

```powershell
Get-BCP47LanguageDictionary [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-BCP47LanguageDictionary
```

Obtenez le dictionnaire complet des langues BCP 47.

### Example 2

```powershell
$dict = Get-BCP47LanguageDictionary
$dict["nl-NL"]  # returns "nl-NL"
$dict["Dutch"]  # returns "nl-NL"
```

Validez et résolvez un code de langue pour la génération d'aide.

## Related Links

- [Get-BCP47LanguageDictionary on GitHub](https://github.com/genXdev/genXdev)
