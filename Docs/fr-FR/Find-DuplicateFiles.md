# Find-DuplicateFiles

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `fdf

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Find-DuplicateFiles [[-Name] <String[]>] [[-RelativeBasePath] <String>] [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-CompareByteLength <Int32>] [-ComparePartial] [-Directory] [-DriveLetter <Char[]>] [-Exclude <String[]>] [-FilesAndDirectories] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-Input <Object>] [-LimitToRoot] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoLinks] [-NoRecurse] [-PassThru] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Find-DuplicateFiles [[-Content] <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>] [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 1 | `@('*')` | Nom de fichier ou modèle à rechercher. Par défaut, '*' 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | Nom du fichier ou modèle à rechercher à partir de l'entrée du pipeline. La valeur par défaut est '*' 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 2 | `@('.*')` | Modèle d'expression régulière pour rechercher dans le contenu *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 3 | `'.\'` | Chemin de base pour la résolution des chemins relatifs dans la sortie |
| `-Category` | String[] | — | — | Named | — | Only output files belonging to selected categories |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Degré maximal de parallélisme pour les tâches d'annuaire |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Facultatif : délai d'expiration en secondes |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Rechercher sur tous les lecteurs disponibles |
| `-Directory` | SwitchParameter | — | — | Named | — | Rechercher uniquement les répertoires |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | — | Inclure à la fois les fichiers et les répertoires |
| `-PassThru` | SwitchParameter | — | — | Named | — | Afficher les éléments correspondants sous forme d'objets |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Inclure les flux de données alternatifs dans les résultats de recherche |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | N'entrez pas dans les sous-répertoires |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Suivre les liens symboliques et les jonctions lors du parcours des répertoires |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | Include optical disk drives |
| `-SearchDrives` | String[] | — | — | Named | `@()` | Optionnel : rechercher des lecteurs spécifiques |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | Optionnel : rechercher des lecteurs spécifiques |
| `-Root` | String[] | — | — | Named | `@()` | Optionnel : rechercher des répertoires spécifiques |
| `-LimitToRoot` | SwitchParameter | — | — | Named | — | Applique la recherche uniquement dans les répertoires racines en supprimant les composants de répertoire des entrées de nom |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | Inclure les fichiers non textuels lors de la recherche dans le contenu des fichiers |
| `-NoLinks` | SwitchParameter | — | — | Named | — | Force le mode sans surveillance et ne générera pas de liens |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `[System.IO.MatchCasing]::PlatformDefault` | Obtient ou définit la sensibilité à la casse pour les fichiers et répertoires |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | Lorsqu'elle est définie, effectue une recherche de contenu dans les flux de données alternatifs (ADS) |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Profondeur de récursion maximale pour le parcours de répertoires. 0 signifie illimité. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Profondeur de récursion maximale pour la recherche de continuation vers le haut de l'arbre. 0 signifie désactivé. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Taille maximale du fichier en octets à inclure dans les résultats. 0 signifie illimité. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Taille minimale du fichier en octets à inclure dans les résultats. 0 signifie aucune taille minimale. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Inclure uniquement les fichiers modifiés après cette date/heure (UTC) |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Inclure uniquement les fichiers modifiés avant cette date/heure (UTC) |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | Attributs de fichier à ignorer (p. ex., Système, Caché ou Aucun) |
| `-Exclude` | String[] | — | — | Named | `@('*\.git\*')` | Exclure les fichiers ou répertoires correspondant à ces motifs de caractères génériques |
| `-AllMatches` | SwitchParameter | — | — | Named | — | Cherchez plusieurs correspondances dans chaque ligne de texte *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Les correspondances sont sensibles à la casse *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | Capture les lignes de contexte autour des correspondances *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Nom de culture utilisé pour la correspondance de motifs *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `'UTF8NoBOM'` | Spécifie l'encodage pour les fichiers cibles *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | — | Seule la première correspondance par fichier est renvoyée *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | — | Désactive la mise en surbrillance des chaînes correspondantes dans la sortie *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | Le paramètre NotMatch trouve du texte qui ne correspond pas au modèle *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | — | Output only matching strings instead of MatchInfo objects *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | Use simple string matching instead of regex *(Parameter set: )* |
| `-ComparePartial` | SwitchParameter | — | — | Named | — | Retournera les fichiers de différentes tailles tant qu'ils commencent par le même nom de fichier et contenu, cela détecte les téléchargements/opérations de copie interrompus |
| `-CompareByteLength` | Int32 | — | — | Named | `65536` | Comparaison rapide de la taille en octets des fichiers, utilisée pour l'indexation rapide et la recherche de doublons, cela ne compare pas le contenu des fichiers |

## Related Links

- [Find-DuplicateFiles on GitHub](https://github.com/genXdev/genXdev)
