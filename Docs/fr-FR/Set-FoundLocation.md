# Set-FoundLocation

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `lcd

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Set-FoundLocation -Name <String> [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-DirectoriesAndFiles] [-DriveLetter <Char[]>] [-ExactMatch] [-Exclude <String[]>] [-File] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoRecurse] [-Push] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Set-FoundLocation -InputObject <Object> [<CommonParameters>]

Set-FoundLocation [[-Content] <String[]>] [-CaseSensitive] [-Culture <String>] [-Encoding <String>] [-NotMatch] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | Nom du fichier ou modèle à rechercher. 🌐 *Supports wildcards* |
| `-InputObject` | Object | ✅ | ✅ (ByValue, ByPropertyName) | Named | — | Nom du fichier ou modèle à rechercher à partir de l'entrée du pipeline. La valeur par défaut est '*' *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | `@(".*")` | Expression régulière pour rechercher dans le contenu des fichiers *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Category` | String[] | — | — | Named | — | Only output files belonging to selected categories |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Degré maximal de parallélisme pour les tâches d'annuaire |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Facultatif : délai d'expiration en secondes |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Rechercher sur tous les lecteurs disponibles |
| `-File` | SwitchParameter | — | — | Named | — | Search for filenames only and change to folder of first found file |
| `-DirectoriesAndFiles` | SwitchParameter | — | — | Named | — | Include filename matching and change to folder of first found file |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Inclure les flux de données alternatifs dans les résultats de recherche |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | N'entrez pas dans les sous-répertoires |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Suivre les liens symboliques et les jonctions lors du parcours des répertoires |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | Include optical disk drives |
| `-SearchDrives` | String[] | — | — | Named | `@()` | Optionnel : rechercher des lecteurs spécifiques |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | Optionnel : rechercher des lecteurs spécifiques |
| `-Root` | String[] | — | — | Named | `@()` | Facultatif : rechercher des dossiers de base spécifiques combinés aux noms fournis |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | Inclure les fichiers non textuels (binaires, images, etc.) lors de la recherche dans le contenu des fichiers |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `(
            [System.IO.MatchCasing]::PlatformDefault)` | Obtient ou définit la sensibilité à la casse pour les fichiers et répertoires |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | Lorsqu'il est défini, effectue une recherche de contenu dans les flux de données alternatifs (ADS). Lorsqu'il n'est pas défini, affiche les informations du fichier ADS sans rechercher leur contenu. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Profondeur de récursion maximale pour le parcours de répertoires. 0 signifie illimité. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Taille maximale du fichier en octets à inclure dans les résultats. 0 signifie illimité. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Taille minimale du fichier en octets à inclure dans les résultats. 0 signifie aucune taille minimale. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Inclure uniquement les fichiers modifiés après cette date/heure (UTC). |
| `-ModifiedBefore` | DateTime | — | — | Named | — | N'inclure que les fichiers modifiés avant cette date/heure (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `(
            [System.IO.FileAttributes]::System)` | Attributs de fichier à ignorer (par exemple, Système, Caché ou Aucun). |
| `-Exclude` | String[] | — | — | Named | `@("*\\.git\\*")` | Exclure les fichiers ou répertoires correspondant à ces modèles de caractères génériques (par exemple, *.tmp, *\bin\*). |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Indique que les correspondances de l'applet de commande sont sensibles à la casse. Par défaut, les correspondances ne sont pas sensibles à la casse. *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Spécifie un nom de culture correspondant au modèle spécifié. Le paramètre Culture doit être utilisé avec le paramètre SimpleMatch. Le comportement par défaut utilise la culture de l'espace d'exécution PowerShell actuel (session). *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `"UTF8NoBOM"` | Spécifie le type d'encodage pour le fichier cible. La valeur par défaut est utf8NoBOM. *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | Le paramètre NotMatch trouve le texte qui ne correspond pas au modèle spécifié. *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | Indique que la cmdlet utilise une correspondance simple plutôt qu'une correspondance d'expression régulière. Dans une correspondance simple, Select-String recherche dans l'entrée le texte spécifié dans le paramètre Pattern. Il n'interprète pas la valeur du paramètre Pattern comme une instruction d'expression régulière. *(Parameter set: )* |
| `-Push` | SwitchParameter | — | — | Named | — | Use Push-Location instead of Set-Location and push the location onto the location stack |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | Lorsqu'il est défini, seules les correspondances exactes de nom sont prises en compte. Par défaut, la correspondance avec caractères génériques est utilisée à moins que le Nom ne contienne des caractères génériques. |

## Related Links

- [Set-FoundLocation on GitHub](https://github.com/genXdev/genXdev)
