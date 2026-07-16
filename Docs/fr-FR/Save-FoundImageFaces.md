# Save-FoundImageFaces

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `saveimagefaces

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Save-FoundImageFaces [[-Any] <String[]>] [-ClearSession] [-DatabaseFilePath <String>] [-DescriptionSearch <String[]>] [-ForceIndexRebuild] [-GeoDistanceInMeters <Double>] [-GeoLocation <Double[]>] [-HasExplicitContent] [-HasNudity] [-InputObject <Object[]>] [-Keywords <String[]>] [-Language <String>] [-NoExplicitContent] [-NoNudity] [-Objects <String[]>] [-OutputDirectory <String>] [-OverallMood <String[]>] [-PathLike <String[]>] [-People <String[]>] [-PictureType <String[]>] [-PreferencesDatabasePath <String>] [-SaveUnknownPersons] [-Scenes <String[]>] [-SessionOnly] [-SkipSession] [-StyleType <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Any` | String[] | — | — | 0 | `@()` | Correspondra à n'importe lequel de tous les types de métadonnées possibles. |
| `-DescriptionSearch` | String[] | — | — | Named | `@()` | Le texte de description à rechercher, les caractères génériques sont autorisés. |
| `-Keywords` | String[] | — | — | Named | `@()` | The keywords to look for, wildcards allowed. |
| `-People` | String[] | — | — | Named | `@()` | Personnes à rechercher, caractères génériques autorisés. |
| `-Objects` | String[] | — | — | Named | `@()` | Objets à rechercher, caractères génériques autorisés. |
| `-Scenes` | String[] | — | — | Named | `@()` | Scènes à rechercher, caractères génériques autorisés. |
| `-PictureType` | String[] | — | — | Named | `@()` | Types d'images à filtrer, les caractères génériques sont autorisés. |
| `-StyleType` | String[] | — | — | Named | `@()` | Types de style à filtrer, caractères génériques autorisés. |
| `-OverallMood` | String[] | — | — | Named | `@()` | Humeurs générales pour filtrer, les jokers sont autorisés. |
| `-DatabaseFilePath` | String | — | — | Named | — | Chemin vers le fichier de base de données SQLite. |
| `-Language` | String | — | — | Named | — | Langue pour les descriptions et mots-clés. |
| `-PathLike` | String[] | — | — | Named | `@()` | Tableau de chaînes de recherche de type chemin de répertoire pour filtrer les images par chemin (motifs LIKE SQL, par exemple '%\\2024\\%') |
| `-InputObject` | Object[] | — | ✅ (ByValue) | Named | — | Accepts les résultats de recherche d'un appel -PassThru précédent pour régénérer la vue. |
| `-OutputDirectory` | String | — | — | Named | `'.\'` | Répertoire pour enregistrer les images de visages recadrés. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Chemin de la base de données pour les fichiers de données de préférence |
| `-HasNudity` | SwitchParameter | — | — | Named | — | Filtrer les images contenant de la nudité. |
| `-NoNudity` | SwitchParameter | — | — | Named | — | Filter images that do NOT contain nudity. |
| `-HasExplicitContent` | SwitchParameter | — | — | Named | — | Filtrer les images qui contiennent du contenu explicite. |
| `-NoExplicitContent` | SwitchParameter | — | — | Named | — | Filtrer les images qui ne contiennent PAS de contenu explicite. |
| `-ForceIndexRebuild` | SwitchParameter | — | — | Named | — | Forcer la reconstruction de la base de données d'index d'images. |
| `-GeoLocation` | Double[] | — | — | Named | — | Coordonnées géographiques [latitude, longitude] à proximité desquelles effectuer la recherche. |
| `-GeoDistanceInMeters` | Double | — | — | Named | `1000` | Distance maximale en mètres depuis la localisation géographique pour rechercher des images. |
| `-SaveUnknownPersons` | SwitchParameter | — | — | Named | — | Also save unknown persons detected as objects. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utiliser les paramètres alternatifs stockés dans la session pour les préférences IA telles que la langue, les collections d'images, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Ne pas utiliser les paramètres alternatifs stockés dans la session pour les préférences IA comme la langue, les collections d'images, etc. |

## Outputs

- `Object[]`
- `List`1[[System.Object, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]`
- `String`

## Related Links

- [Save-FoundImageFaces on GitHub](https://github.com/genXdev/genXdev)
