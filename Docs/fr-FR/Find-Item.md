# Find-Item

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** `l

## Synopsis

> Search for files and directories with advanced filtering options.

## Description

* Trouver des fichiers avec Find-Item -> l
        * Recherche multi-threadée rapide : utilise le traitement E/S parallèle et asynchrone
              avec un degré de parallélisme maximal configurable (par défaut basé sur les cœurs du CPU) pour un balayage efficace des fichiers et répertoires.
        * Correspondance de motifs avancée : prend en charge les caractères génériques (*, ?), les motifs récursifs
              comme **, et les structures de chemin complexes pour des requêtes précises sur les fichiers et répertoires.
              **/nomfichier ne récursera que jusqu'à ce que le nom de fichier soit trouvé. Plusieurs de ces motifs
              sont autorisés, tant qu'ils sont précédés d'un nom de fichier ou de répertoire à faire correspondre.
              Cet analyseur de motifs a la puissance de Resolve-Path mais avec des fonctionnalités de récursion,
              et ne prend en charge que * et ? comme caractères génériques,
              évitant les bogues avec les chemins contenant des crochets [ ], éliminant
              le besoin du paramètre -LiteralPath, tout en maintenant l'intégrité
              pour les sections de chemin sans caractères génériques, contrairement à une correspondance générique sur
              l'ensemble du chemin complet.
        * Recherche de contenu améliorée : intégration complète de Select-String
              avec des motifs d'expression régulière dans le contenu des fichiers en utilisant le
              paramètre -Content.
            * Optimisation pour les gros fichiers : gère les fichiers extrêmement volumineux avec des
                  tampons se chevauchant intelligents et une allocation de tas minimale
            * Options de correspondances multiples : trouve toutes les correspondances par ligne (-AllMatches) ou
                  seulement la première correspondance par fichier (-List)
            * Contrôle de la sensibilité à la casse : correspondance sensible à la casse (-CaseSensitive)
                  avec des options spécifiques à la culture (-Culture)
            * Capture de contexte : affiche les lignes avant et après les correspondances (-Context) pour
                  une meilleure compréhension
            * Correspondance inverse : trouve les fichiers qui ne contiennent pas le motif (-NotMatch)
            * Formats de sortie : sortie de chaîne brute (-Raw), réponse booléenne silencieuse (-Quiet),
                  ou objets MatchInfo complets
            * Types de motifs : expressions régulières (par défaut) ou correspondance de chaîne littérale simple
                  (-SimpleMatch)
            * Prise en charge de l'encodage : spécifie l'encodage du fichier (-Encoding) pour un traitement
                  précis du texte
        * Flexibilité des types de chemin : gère les chemins relatifs, absolus, UNC, racine et
              les flux de données alternatifs NTFS (ADS) avec recherche de contenu optionnelle dans les flux.
        * Prise en charge multi-disques : recherche sur tous les disques avec -AllDrives ou des disques
              spécifiques via -SearchDrives, y compris les disques optiques si spécifié.
        * Filtrage des répertoires et fichiers : options pour rechercher uniquement les répertoires (-Directory),
              les fichiers et répertoires (-FilesAndDirectories), ou les fichiers avec correspondance de contenu.
        * Exclusions et limites : motifs d'exclusion avec -Exclude, définition de la profondeur de récursion maximale
              (-MaxRecursionDepth), limites de taille de fichier (-MaxFileSize, -MinFileSize) et filtres
              de date de modification (-ModifiedAfter, -ModifiedBefore).
        * Personnalisation de la sortie : prend en charge PassThru pour les objets FileInfo/DirectoryInfo,
              les chemins relatifs, les hyperliens en mode assisté, ou les chemins simples en mode non assisté
              (utilisez -NoLinks en cas de problèmes pour forcer le mode non assisté).
        * Optimisations des performances : ignore les fichiers non textuels par défaut pour la recherche de contenu
              (remplacez avec -IncludeNonTextFileMatching), gère les chemins longs (>260 caractères),
              et suit les liens symboliques/jonctions.
        * Fonctionnalités de sécurité : prise en charge du délai d'expiration (-TimeoutSeconds), ignore les éléments
              inaccessibles, ignore les attributs système par défaut et empêche les boucles infinies avec le suivi des nœuds visités.

## Syntax

```powershell
Find-Item [[-Name] <string[]>] [[-RelativeBasePath] <string>] [-Input <Object>] [-Category <string[]>] [-MaxDegreeOfParallelism <int>] [-TimeoutSeconds <int>] [-AllDrives] [-Directory] [-FilesAndDirectories] [-PassThru] [-IncludeAlternateFileStreams] [-NoRecurse] [-FollowSymlinkAndJunctions] [-IncludeOpticalDiskDrives] [-SearchDrives <string[]>] [-DriveLetter <char[]>] [-Root <string[]>] [-LimitToRoot] [-IncludeNonTextFileMatching] [-NoLinks] [-CaseNameMatching <MatchCasing>] [-SearchADSContent] [-MaxRecursionDepth <int>] [-MaxSearchUpDepth <int>] [-MaxFileSize <long>] [-MinFileSize <long>] [-ModifiedAfter <datetime>] [-ModifiedBefore <datetime>] [-AttributesToSkip <FileAttributes>] [-Exclude <string[]>] [<CommonParameters>]

Find-Item [[-Name] <string[]>] [[-Content] <string[]>] [[-RelativeBasePath] <string>] [-Input <Object>] [-Category <string[]>] [-MaxDegreeOfParallelism <int>] [-TimeoutSeconds <int>] [-AllDrives] [-Directory] [-FilesAndDirectories] [-PassThru] [-IncludeAlternateFileStreams] [-NoRecurse] [-FollowSymlinkAndJunctions] [-IncludeOpticalDiskDrives] [-SearchDrives <string[]>] [-DriveLetter <char[]>] [-Root <string[]>] [-LimitToRoot] [-IncludeNonTextFileMatching] [-NoLinks] [-CaseNameMatching <MatchCasing>] [-SearchADSContent] [-MaxRecursionDepth <int>] [-MaxSearchUpDepth <int>] [-MaxFileSize <long>] [-MinFileSize <long>] [-ModifiedAfter <datetime>] [-ModifiedBefore <datetime>] [-AttributesToSkip <FileAttributes>] [-Exclude <string[]>] [-AllMatches] [-CaseSensitive] [-Context <int[]>] [-Culture <string>] [-Encoding <string>] [-List] [-NoEmphasis] [-NotMatch] [-Quiet] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | — | Nom de fichier ou modèle à rechercher. Par défaut, '*' 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | Nom de fichier ou modèle à rechercher. Par défaut, '*' 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | — | Modèle d'expression régulière pour rechercher dans le contenu *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 2 | — | Chemin de base pour la résolution des chemins relatifs dans la sortie |
| `-Category` | String[] | — | — | Named | — | The `-Category` parameter. |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Degré maximal de parallélisme pour les tâches d'annuaire |
| `-TimeoutSeconds` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Facultatif : délai d'expiration en secondes |
| `-AllDrives` | SwitchParameter | — | — | Named | `False` | Rechercher sur tous les lecteurs disponibles |
| `-Directory` | SwitchParameter | — | — | Named | `False` | Rechercher uniquement les répertoires |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | `False` | Inclure à la fois les fichiers et les répertoires |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Afficher les éléments correspondants sous forme d'objets |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | `False` | Inclure les flux de données alternatifs dans les résultats de recherche |
| `-NoRecurse` | SwitchParameter | — | — | Named | `False` | N'entrez pas dans les sous-répertoires |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | `False` | Suivre les liens symboliques et les jonctions lors du parcours des répertoires |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | `False` | Include optical disk drives |
| `-SearchDrives` | String[] | — | — | Named | — | Optionnel : rechercher des lecteurs spécifiques |
| `-DriveLetter` | Char[] | — | — | Named | — | Optionnel : rechercher des lecteurs spécifiques |
| `-Root` | String[] | — | — | Named | — | Optionnel : rechercher des répertoires spécifiques |
| `-LimitToRoot` | SwitchParameter | — | — | Named | `False` | Applique la recherche uniquement dans les répertoires racines en supprimant les composants de répertoire des entrées de nom |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | `False` | Inclure les fichiers non textuels lors de la recherche dans le contenu des fichiers |
| `-NoLinks` | SwitchParameter | — | — | Named | `False` | Force le mode sans surveillance et ne générera pas de liens |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `PlatformDefault` | Obtient ou définit la sensibilité à la casse pour les fichiers et répertoires |
| `-SearchADSContent` | SwitchParameter | — | — | Named | `False` | Lorsqu'il est défini, effectue une recherche de contenu dans les flux de données alternatifs (ADS). Lorsqu'il n'est pas défini, affiche les informations du fichier ADS sans rechercher leur contenu. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Profondeur de récursion maximale pour le parcours de répertoires. 0 signifie illimité. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Profondeur de récursion maximale pour continuer à remonter l'arborescence lors de recherches relatives, tant qu'aucun élément n'est trouvé. 0 signifie désactivé. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Taille maximale du fichier en octets à inclure dans les résultats. 0 signifie illimité. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Taille minimale du fichier en octets à inclure dans les résultats. 0 signifie aucune taille minimale. |
| `-ModifiedAfter` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Inclure uniquement les fichiers modifiés après cette date/heure (UTC). |
| `-ModifiedBefore` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | N'inclure que les fichiers modifiés avant cette date/heure (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `None` | Attributs de fichier à ignorer (par exemple, Système, Caché ou Aucun). |
| `-Exclude` | String[] | — | — | Named | — | Exclure les fichiers ou répertoires correspondant à ces modèles génériques (par ex., *.tmp, *\bin\*). |
| `-AllMatches` | SwitchParameter | — | — | Named | `False` | Indique que l'applet de commande recherche plusieurs correspondances dans chaque ligne de texte. Sans ce paramètre, Select-String ne trouve que la première correspondance dans chaque ligne de texte. *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | `False` | Indique que les correspondances de l'applet de commande sont sensibles à la casse. Par défaut, les correspondances ne sont pas sensibles à la casse. *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | Capture le nombre spécifié de lignes avant et après la ligne qui correspond au motif. *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Spécifie un nom de culture correspondant au modèle spécifié. Le paramètre Culture doit être utilisé avec le paramètre SimpleMatch. Le comportement par défaut utilise la culture de l'espace d'exécution PowerShell actuel (session). *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | — | Spécifie le type d'encodage pour le fichier cible. Prend en charge les valeurs compatibles avec Select-String et les encodages .NET étendus. *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | `False` | Seule la première occurrence de texte correspondant est renvoyée à partir de chaque fichier d'entrée. C'est le moyen le plus efficace d'obtenir une liste de fichiers dont le contenu correspond à l'expression régulière. *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | `False` | Désactive la mise en surbrillance des chaînes correspondantes dans la sortie. *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | `False` | Le paramètre NotMatch trouve le texte qui ne correspond pas au modèle spécifié. *(Parameter set: )* |
| `-Quiet` | SwitchParameter | — | — | Named | `False` | Indique que la cmdlet renvoie une réponse simple au lieu d'un objet MatchInfo. La valeur de retour est $true si le modèle est trouvé ou $null si le modèle n'est pas trouvé. *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | `False` | Fait en sorte que l'applet de commande affiche uniquement les chaînes correspondantes, plutôt que des objets MatchInfo. Cela donne un comportement similaire à celui des commandes Unix grep ou Windows findstr.exe. *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | `False` | Indique que la cmdlet utilise une correspondance simple plutôt qu'une correspondance d'expression régulière. Dans une correspondance simple, Select-String recherche dans l'entrée le texte spécifié dans le paramètre Pattern. Il n'interprète pas la valeur du paramètre Pattern comme une instruction d'expression régulière. *(Parameter set: )* |

## Examples

### Example 1

```powershell
Find-Item -Content "translation"

# Short form:
l -mc translation
```

grep -r "translation" .

### Example 2

```powershell
Find-Item "*.js" "Version == `"\d\d?\.\d\d?\.\d\d?`""

# Short form:
l *.js "Version == `"\d\d?\.\d\d?\.\d\d?`""
```

Recherchez des fichiers JavaScript contenant une chaîne de version au format "Version == `x.y.z`".

### Example 3

```powershell
Find-Item -Directory

# Short form:
l -dir
```

List all directories
Find all directories in the current directory and its subdirectories.

### Example 4

```powershell
Find-Item ".\*.xml" -PassThru | % FullName

# Short form:
l *.xml -pt | % FullName
```

Rechercher les fichiers XML et passer les objets
Recherchez tous les fichiers .xml et passez les résultats en tant qu'objets dans le pipeline.

### Example 5

```powershell
Find-Item -IncludeAlternateFileStreams

# Short form:
l -ads
```

Inclure les flux de données alternatifs
Rechercher tous les fichiers et inclure leurs flux de données alternatifs dans les résultats.

### Example 6

```powershell
Find-Item "*.pdf" -AllDrives

# Short form:
l *.pdf -alldrives
```

Rechercher sur tous les disques
Rechercher tous les fichiers PDF sur tous les disques disponibles.

### Example 7

```powershell
Find-Item "*.log" -TimeoutSeconds 300 -MaxDegreeOfParallelism 4

# Short form:
l *.log -maxseconds 300 -threads 4
```

Délai d'attente personnalisé et parallélisme
Rechercher des fichiers journaux avec un délai d'attente de 5 minutes et un parallélisme limité.

### Example 8

```powershell
Get-ChildItem -Path "C:\Logs" | Find-Item -Content "error"

# Short form:
ls C:\Logs | l -matchcontent "error"
```

Entrée du pipeline
Transmettez les chemins de fichiers de Get-ChildItem pour rechercher les fichiers contenant « error ».

### Example 9

```powershell
Find-Item "*.txt" -MaxRecursionDepth 2

# Short form:
l *.txt -maxdepth 2
```

Limitez la profondeur de récursion
Recherchez des fichiers texte mais limitez la récursion à 2 niveaux de répertoires.

### Example 10

```powershell
Find-Item -MinFileSize 1048576 -MaxFileSize 10485760

# Short form:
l -minsize 1048576 -maxsize 10485760
```

Filtrer par taille de fichier
Trouver les fichiers de plus de 1 Mo mais de moins de 10 Mo.

### Example 11

```powershell
Find-Item -ModifiedAfter "2025-01-01"

# Short form:
l -after "2025-01-01"
```

Filtrer par date de modification
Rechercher les fichiers modifiés après le 1er janvier 2025.

### Example 12

```powershell
Find-Item -Exclude "*.tmp", "*\bin\*"

# Short form:
l -skiplike "*.tmp", "*\bin\*"
```

Exclure des motifs spécifiques
Rechercher tous les fichiers mais exclure les fichiers temporaires et les répertoires bin.

### Example 13

```powershell
Find-Item "*.docx" -SearchDrives "C:\", "D:\"

# Short form:
l *.docx -drives C:\, D:\
```

Search specific drives
Search for .docx files on C: and D: drives only.

### Example 14

```powershell
Find-Item -Content "Error" -CaseSensitive

# Short form:
l -mc "Error" -CaseSensitive
```

Recherche de contenu sensible à la casse
Rechercher les fichiers contenant "Error" (sensible à la casse) dans leur contenu.

### Example 15

```powershell
Find-Item -IncludeAlternateFileStreams -SearchADSContent -Content "secret"

# Short form:
l -ads -sads -mc "secret"
```

Rechercher du contenu de flux de données alternatifs

### Example 16

```powershell
Find-Item "*.ps1" -Content "function" -AllMatches

# Short form:
l *.ps1 -mc "function" -AllMatches
```

Find all matches per line
Search for all occurrences of "function" in each line, not just the first match.

### Example 17

```powershell
Find-Item "*.log" -Content "error" -Context 2,3

# Short form:
l *.log -mc "error" -Context 2,3
```

Afficher le contexte autour des correspondances
Affiche 2 lignes avant et 3 lignes après chaque correspondance pour une meilleure compréhension.

### Example 18

```powershell
Find-Item "*.txt" -Content "TODO:.*" -Raw

# Short form:
l *.txt -mc "TODO:.*" -Raw
```

Get only matching strings
Return just the matching text strings instead of full match objects.

### Example 19

```powershell
Find-Item "*.config" -Content "database" -Quiet

# Short form:
l *.config -mc "database" -Quiet
```

Vérification booléenne simple
Retournez vrai/faux au lieu des détails de correspondance pour vérifier si le motif existe.

### Example 20

```powershell
Find-Item "*.cs" -Content "class.*Controller" -List

# Short form:
l *.cs -mc "class.*Controller" -List
```

Trouver uniquement la première correspondance par fichier
Arrêter à la première correspondance dans chaque fichier pour un listage efficace des fichiers.

### Example 21

```powershell
Find-Item "*.txt" -Content "$variable[0]" -SimpleMatch

# Short form:
l *.txt -mc "$variable[0]" -SimpleMatch
```

Correspondance textuelle exacte
Recherchez un texte exact sans interprétation d'expression régulière en utilisant SimpleMatch.

### Example 22

```powershell
Find-Item "*.js" -Content "console\.log" -NotMatch

# Short form:
l *.js -mc "console\.log" -NotMatch
```

Trouver des fichiers NE contenant PAS un motif
Utilisez NotMatch pour trouver des fichiers qui ne contiennent pas le motif spécifié.

### Example 23

```powershell
Find-Item "*.txt" -Content "café" -Encoding UTF8

# Short form:
l *.txt -mc "café" -Encoding UTF8
```

Spécifier l'encodage du fichier
Rechercher des fichiers avec un encodage spécifique pour un traitement précis du texte.

### Example 24

```powershell
Find-Item "*.txt" -Content "Müller" -SimpleMatch -Culture "de-DE"

# Short form:
l *.txt -mc "Müller" -SimpleMatch -Culture "de-DE"
```

Comparaison de textes culturels
Utilisez la correspondance spécifique à la culture avec SimpleMatch pour les textes internationaux.

### Example 25

```powershell
Find-Item "*.log" -Content "exception" -MinFileSize 1024 -ModifiedAfter "2025-01-01" -MaxRecursionDepth 3

# Short form:
l *.log -mc "exception" -minsize 1024 -after "2025-01-01" -maxdepth 3
```

Recherche de contenu complexe avec filtres de fichiers
Combinez des filtres de taille, de date et de contenu pour des recherches précises.

## Related Links

- [Find-Item on GitHub](https://github.com/genXdev/genXdev)
