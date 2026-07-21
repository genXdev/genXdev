# Find-Item

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** `l`

## Synopsis

> Recherche des fichiers et répertoires avec des options de filtrage avancées.

## Description

```text
*   Rechercher des fichiers avec Find-Item -> l
        * Recherche multi-thread rapide : utilise un traitement d'E/S parallèle et asynchrone avec un degré de parallélisme maximal configurable (basé par défaut sur le nombre de cœurs CPU) pour une analyse efficace des fichiers et répertoires.
        * Correspondance de motifs avancée : prend en charge les caractères génériques (*, ?), les motifs récursifs comme **, et les structures de chemin complexes pour des requêtes précises sur les fichiers et répertoires.
          **/nomfichier ne se récure que jusqu'à ce que le nom de fichier soit trouvé. Plusieurs de ces motifs sont autorisés, tant qu'ils sont précédés d'un nom de fichier ou de répertoire à trouver.
          Cet analyseur de motifs a la puissance de Resolve-Path mais avec des fonctionnalités de récursion, et ne prend en charge que * et ? comme caractères génériques,
          évitant les bugs avec les chemins contenant des crochets [ ], éliminant le besoin du paramètre -LiteralPath, tout en maintenant l'intégrité pour les sections de chemin sans caractères génériques, contrairement à une correspondance générique sur l'ensemble du chemin complet.
        * Recherche de contenu améliorée : intégration complète de Select-String avec des motifs d'expressions régulières dans le contenu des fichiers à l'aide du paramètre -Content.
            * Optimisation des gros fichiers : gère les fichiers extrêmement volumineux avec des tampons de chevauchement intelligents et une allocation de tas minimale
            * Options de correspondance multiples : trouver toutes les correspondances par ligne (-AllMatches) ou seulement la première correspondance par fichier (-List)
            * Contrôle de la sensibilité à la casse : correspondance sensible à la casse (-CaseSensitive) avec des options spécifiques à la culture (-Culture)
            * Capture de contexte : afficher les lignes avant et après les correspondances (-Context) pour une meilleure compréhension
            * Correspondance inverse : trouver les fichiers qui ne contiennent pas le motif (-NotMatch)
            * Formats de sortie : sortie brute sous forme de chaîne (-Raw), réponse booléenne silencieuse (-Quiet), ou objets MatchInfo complets
            * Types de motifs : expressions régulières (par défaut) ou correspondance de chaîne littérale simple (-SimpleMatch)
            * Prise en charge de l'encodage : spécifier l'encodage du fichier (-Encoding) pour un traitement précis du texte
        * Flexibilité du type de chemin : gère les chemins relatifs, absolus, UNC, enracinés et les flux de données alternatifs (ADS) NTFS avec recherche de contenu optionnelle dans les flux.
        * Prise en charge multi-disques : recherche sur tous les disques avec -AllDrives ou des disques spécifiques via -SearchDrives, y compris les disques optiques si spécifié.
        * Filtrage des répertoires et des fichiers : options pour rechercher uniquement les répertoires (-Directory), à la fois les fichiers et les répertoires (-FilesAndDirectories), ou les fichiers avec correspondance de contenu.
        * Exclusion et limites : motifs d'exclusion avec -Exclude, définition de la profondeur de récursion maximale (-MaxRecursionDepth), limites de taille de fichier (-MaxFileSize, -MinFileSize) et filtres de date de modification (-ModifiedAfter, -ModifiedBefore).
        * Personnalisation de la sortie : prend en charge PassThru pour les objets FileInfo/DirectoryInfo, les chemins relatifs, les hyperliens en mode interactif, ou les chemins simples en mode non interactif (utiliser -NoLinks en cas d'incidents pour forcer le mode non interactif).
        * Optimisations des performances : ignore les fichiers non textuels par défaut pour la recherche de contenu (remplacer avec -IncludeNonTextFileMatching), gère les chemins longs (>260 caractères) et suit les liens symboliques/jonctions.
        * Fonctionnalités de sécurité : prise en charge du délai d'attente (-TimeoutSeconds), ignore les éléments inaccessibles, ignore les attributs système par défaut et empêche les boucles infinies avec le suivi des nœuds visités.

        * Les catégories valides pour le paramètre -Category sont : Images, Vidéos, Musique, Documents, Classeurs, Présentations, Archives, Installateurs, Exécutables, Bases de données, Fichiers de conception, Livres électroniques, Sous-titres, Polices, Fichiers email, Modèles 3D, Ressources de jeu, Fichiers médicaux, Fichiers financiers, Fichiers juridiques, Code source, Scripts, Balisage et données, Configuration, Journaux, Fichiers texte, Fichiers web, Paroles et accords de musique, Écriture créative, Recettes, Fichiers de recherche
```
## Syntax

```powershell
Find-Item [[-Name] <String[]>] [[-RelativeBasePath] <String>] [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-Directory] [-DriveLetter <Char[]>] [-Exclude <String[]>] [-FilesAndDirectories] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-Input <Object>] [-LimitToRoot] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-ModifiedBefore <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-NoLinks] [-NoRecurse] [-PassThru] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [<CommonParameters>]

Find-Item [[-Content] <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>] [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Quiet] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | — | Nom de fichier ou modèle à rechercher. La valeur par défaut est '*' 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | Nom de fichier ou modèle à rechercher. La valeur par défaut est '*' 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | — | Modèle d'expression régulière pour rechercher dans le contenu *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 2 | — | Chemin de base pour résoudre les chemins relatifs dans la sortie |
| `-Category` | String[] | — | — | Named | — | The `-Category` parameter. |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Degré maximal de parallélisme pour les tâches de répertoire |
| `-TimeoutSeconds` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Optionnel : délai d'expiration de l'annulation en secondes |
| `-AllDrives` | SwitchParameter | — | — | Named | `False` | Rechercher sur tous les lecteurs disponibles |
| `-Directory` | SwitchParameter | — | — | Named | `False` | Rechercher uniquement les répertoires |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | `False` | Inclure à la fois les fichiers et les répertoires |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Produire les éléments correspondants sous forme d'objets |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | `False` | Inclure les flux de données alternatifs dans les résultats de recherche |
| `-NoRecurse` | SwitchParameter | — | — | Named | `False` | Ne pas parcourir les sous-répertoires |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | `False` | Suivre les liens symboliques et les jonctions lors du parcours des répertoires |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | `False` | Inclure les lecteurs de disques optiques |
| `-SearchDrives` | String[] | — | — | Named | — | Facultatif : rechercher des lecteurs spécifiques |
| `-DriveLetter` | Char[] | — | — | Named | — | Facultatif : rechercher des lecteurs spécifiques |
| `-Root` | String[] | — | — | Named | — | Facultatif : rechercher des répertoires spécifiques |
| `-LimitToRoot` | SwitchParameter | — | — | Named | `False` | Force la recherche uniquement dans les répertoires racines en supprimant les composants de répertoire des entrées de nom |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | `False` | Inclure les fichiers non textuels lors de la recherche dans le contenu des fichiers |
| `-NoLinks` | SwitchParameter | — | — | Named | `False` | Force le mode sans assistance et ne génère pas de liens |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `PlatformDefault` | Obtient ou définit la sensibilité à la casse pour les fichiers et répertoires |
| `-SearchADSContent` | SwitchParameter | — | — | Named | `False` | Lorsqu'il est défini, effectue une recherche de contenu dans les flux de données alternatifs (ADS). Lorsqu'il n'est pas défini, affiche les informations sur les fichiers ADS sans rechercher leur contenu. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Profondeur de récursion maximale pour le parcours de répertoire. 0 signifie illimité. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Profondeur de récursion maximale pour continuer à remonter l'arborescence lors des recherches relatives, tant qu'aucun élément n'est trouvé. 0 signifie désactivé. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Taille maximale du fichier en octets à inclure dans les résultats. 0 signifie illimité. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Taille minimale de fichier en octets à inclure dans les résultats. 0 signifie aucune taille minimale. |
| `-ModifiedAfter` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Inclure uniquement les fichiers modifiés après cette date/heure (UTC). |
| `-ModifiedBefore` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Inclure uniquement les fichiers modifiés avant cette date/heure (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `None` | Attributs de fichier à ignorer (par exemple, Système, Caché ou Aucun). |
| `-Exclude` | String[] | — | — | Named | — | Exclure les fichiers ou répertoires correspondant à ces modèles de caractères génériques (par exemple, *.tmp, *\bin\*). |
| `-AllMatches` | SwitchParameter | — | — | Named | `False` | Indique que l'applet de commande recherche plusieurs correspondances dans chaque ligne de texte. Sans ce paramètre, Select-String ne trouve que la première correspondance dans chaque ligne de texte. *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | `False` | Indique que les correspondances de l'applet de commande sont sensibles à la casse. Par défaut, les correspondances ne sont pas sensibles à la casse. *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | Capture le nombre spécifié de lignes avant et après la ligne qui correspond au modèle. *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Spécifie un nom de culture correspondant au modèle spécifié. Le paramètre Culture doit être utilisé avec le paramètre SimpleMatch. Le comportement par défaut utilise la culture de l'espace d'exécution PowerShell actuel (session). *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | — | Spécifie le type d'encodage pour le fichier cible. Prend en charge les valeurs compatibles avec Select-String et les encodages étendus .NET. *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | `False` | Seule la première occurrence du texte correspondant est renvoyée à partir de chaque fichier d'entrée. C'est la façon la plus efficace de récupérer une liste de fichiers dont le contenu correspond à l'expression régulière. *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | `False` | Désactive la mise en surbrillance des chaînes correspondantes dans la sortie. *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | `False` | Le paramètre NotMatch recherche du texte qui ne correspond pas au modèle spécifié. *(Parameter set: )* |
| `-Quiet` | SwitchParameter | — | — | Named | `False` | Indique que l'applet de commande retourne une réponse simple au lieu d'un objet MatchInfo. La valeur retournée est $true si le modèle est trouvé ou $null si le modèle n'est pas trouvé. *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | `False` | Force l'applet de commande à générer uniquement les chaînes correspondantes, plutôt que des objets MatchInfo. Cela produit un comportement qui ressemble le plus à la commande Unix grep ou à la commande Windows findstr.exe. *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | `False` | Indique que l'applet de commande utilise une correspondance simple plutôt qu'une correspondance par expression régulière. Dans une correspondance simple, Select-String recherche le texte du paramètre Pattern dans l'entrée. Il n'interprète pas la valeur du paramètre Pattern comme une instruction d'expression régulière. *(Parameter set: )* |

## Examples

### Example 1

```powershell
Find-Item -Content "translation"

# Short form:
l -mc translation
```

Rechercher les fichiers contenant un mot spécifique
Rechercher dans le répertoire courant et ses sous-répertoires tous les fichiers contenant le mot « traduction ».

### Example 2

```powershell
Find-Item "*.js" "Version == `"\d\d?\.\d\d?\.\d\d?`""

# Short form:
l *.js "Version == `"\d\d?\.\d\d?\.\d\d?`""
```

Rechercher des fichiers JavaScript avec une chaîne de version
Recherchez les fichiers JavaScript contenant une chaîne de version au format "Version == `x.y.z`".

### Example 3

```powershell
Find-Item -Directory

# Short form:
l -dir
```

Lister tous les répertoires
Rechercher tous les répertoires dans le répertoire actif et ses sous-répertoires.

### Example 4

```powershell
Find-Item ".\*.xml" -PassThru | % FullName

# Short form:
l *.xml -pt | % FullName
```

Rechercher les fichiers XML et transmettre les objets
Recherchez tous les fichiers .xml et transmettez les résultats en tant qu’objets via le pipeline.

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

Rechercher sur tous les lecteurs
Rechercher tous les fichiers PDF sur tous les lecteurs disponibles.

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

Entrée par pipeline
Transmettre les chemins de fichiers de Get-ChildItem pour rechercher les fichiers contenant « error ».

### Example 9

```powershell
Find-Item "*.txt" -MaxRecursionDepth 2

# Short form:
l *.txt -maxdepth 2
```

Limiter la profondeur de récursion
Rechercher des fichiers texte mais limiter la récursion à 2 niveaux de répertoires.

### Example 10

```powershell
Find-Item -MinFileSize 1048576 -MaxFileSize 10485760

# Short form:
l -minsize 1048576 -maxsize 10485760
```

Filtrer par taille de fichier
Rechercher les fichiers plus grands que 1 Mo mais plus petits que 10 Mo.

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

Rechercher des lecteurs spécifiques
Rechercher des fichiers .docx uniquement sur les lecteurs C: et D:.

### Example 14

```powershell
Find-Item -Content "Error" -CaseSensitive

# Short form:
l -mc "Error" -CaseSensitive
```

Recherche de contenu sensible à la casse
Recherche de fichiers contenant « Error » (sensible à la casse) dans leur contenu.

### Example 15

```powershell
Find-Item -IncludeAlternateFileStreams -SearchADSContent -Content "secret"

# Short form:
l -ads -sads -mc "secret"
```

Rechercher le contenu des flux de données alternatifs
Rechercher les fichiers contenant des flux de données alternatifs contenant "secret".

### Example 16

```powershell
Find-Item "*.ps1" -Content "function" -AllMatches

# Short form:
l *.ps1 -mc "function" -AllMatches
```

Trouver toutes les correspondances par ligne
Rechercher toutes les occurrences de "fonction" dans chaque ligne, pas seulement la première correspondance.

### Example 17

```powershell
Find-Item "*.log" -Content "error" -Context 2,3

# Short form:
l *.log -mc "error" -Context 2,3
```

Afficher le contexte autour des correspondances
Afficher 2 lignes avant et 3 lignes après chaque correspondance pour une meilleure compréhension.

### Example 18

```powershell
Find-Item "*.txt" -Content "TODO:.*" -Raw

# Short form:
l *.txt -mc "TODO:.*" -Raw
```

Obtenir uniquement les chaînes correspondantes
Retourne uniquement le texte des chaînes correspondantes au lieu des objets de correspondance complets.

### Example 19

```powershell
Find-Item "*.config" -Content "database" -Quiet

# Short form:
l *.config -mc "database" -Quiet
```

Vérification booléenne simple
Renvoie vrai/faux au lieu des détails de correspondance pour vérifier si le motif existe.

### Example 20

```powershell
Find-Item "*.cs" -Content "class.*Controller" -List

# Short form:
l *.cs -mc "class.*Controller" -List
```

Ne trouver que la première correspondance par fichier
S'arrêter à la première correspondance dans chaque fichier pour un listage de fichiers efficace.

### Example 21

```powershell
Find-Item "*.txt" -Content "$variable[0]" -SimpleMatch

# Short form:
l *.txt -mc "$variable[0]" -SimpleMatch
```

Correspondance de chaîne littérale
Recherche du texte exact sans interprétation d'expression régulière à l'aide de SimpleMatch.

### Example 22

```powershell
Find-Item "*.js" -Content "console\.log" -NotMatch

# Short form:
l *.js -mc "console\.log" -NotMatch
```

Rechercher les fichiers ne contenant PAS un motif
Utilisez NotMatch pour trouver les fichiers qui ne contiennent pas le motif spécifié.

### Example 23

```powershell
Find-Item "*.txt" -Content "café" -Encoding UTF8

# Short form:
l *.txt -mc "café" -Encoding UTF8
```

Spécifier l'encodage des fichiers
Rechercher des fichiers avec un encodage spécifique pour un traitement précis du texte.

### Example 24

```powershell
Find-Item "*.txt" -Content "Müller" -SimpleMatch -Culture "de-DE"

# Short form:
l *.txt -mc "Müller" -SimpleMatch -Culture "de-DE"
```

Comparaison de textes culturels
Utilisez une correspondance spécifique à la culture avec SimpleMatch pour les textes internationaux.

### Example 25

```powershell
Find-Item "*.log" -Content "exception" -MinFileSize 1024 -ModifiedAfter "2025-01-01" -MaxRecursionDepth 3

# Short form:
l *.log -mc "exception" -minsize 1024 -after "2025-01-01" -maxdepth 3
```

Recherche complexe de contenu avec filtres de fichiers
Combinez des filtres de taille, de date et de contenu pour des recherches précises.

## Parameter Details

### `-Name <String[]>`

> Nom de fichier ou modèle à rechercher. La valeur par défaut est '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `like`, `Path`, `LiteralPath`, `Query`, `SearchMask`, `Include` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Input <Object>`

> Nom de fichier ou modèle à rechercher. La valeur par défaut est '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `FullName` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Content <String[]>`

> Modèle d'expression régulière pour rechercher dans le contenu

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `mc`, `matchcontent`, `regex`, `Pattern` |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | WithPattern |

<hr/>
### `-RelativeBasePath <String>`

> Chemin de base pour résoudre les chemins relatifs dans la sortie

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `base` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Category <String[]>`

> The `-Category` parameter.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `filetype` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxDegreeOfParallelism <Int32>`

> Degré maximal de parallélisme pour les tâches de répertoire

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `threads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeoutSeconds <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> Optionnel : délai d'expiration de l'annulation en secondes

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `maxseconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllDrives`

> Rechercher sur tous les lecteurs disponibles

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Directory`

> Rechercher uniquement les répertoires

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `dir` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FilesAndDirectories`

> Inclure à la fois les fichiers et les répertoires

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `both`, `DirectoriesAndFiles` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> Produire les éléments correspondants sous forme d'objets

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeAlternateFileStreams`

> Inclure les flux de données alternatifs dans les résultats de recherche

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `ads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoRecurse`

> Ne pas parcourir les sous-répertoires

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `nr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FollowSymlinkAndJunctions`

> Suivre les liens symboliques et les jonctions lors du parcours des répertoires

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `symlinks`, `sl` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeOpticalDiskDrives`

> Inclure les lecteurs de disques optiques

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchDrives <String[]>`

> Facultatif : rechercher des lecteurs spécifiques

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `drives` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DriveLetter <Char[]>`

> Facultatif : rechercher des lecteurs spécifiques

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Root <String[]>`

> Facultatif : rechercher des répertoires spécifiques

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LimitToRoot`

> Force la recherche uniquement dans les répertoires racines en supprimant les composants de répertoire des entrées de nom

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `limit` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeNonTextFileMatching`

> Inclure les fichiers non textuels lors de la recherche dans le contenu des fichiers

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `binary` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoLinks`

> Force le mode sans assistance et ne génère pas de liens

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `nl`, `ForceUnattenedMode` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CaseNameMatching <IO.MatchCasing>`

> Obtient ou définit la sensibilité à la casse pour les fichiers et répertoires

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `PlatformDefault` |
| **Accept pipeline input?** | False |
| **Aliases** | `casing`, `CaseSearchMaskMatching ` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchADSContent`

> Lorsqu'il est défini, effectue une recherche de contenu dans les flux de données alternatifs (ADS). Lorsqu'il n'est pas défini, affiche les informations sur les fichiers ADS sans rechercher leur contenu.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `sads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxRecursionDepth <Int32>`

> Profondeur de récursion maximale pour le parcours de répertoire. 0 signifie illimité.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `md`, `depth`, `maxdepth` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxSearchUpDepth <Int32>`

> Profondeur de récursion maximale pour continuer à remonter l'arborescence lors des recherches relatives, tant qu'aucun élément n'est trouvé. 0 signifie désactivé.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `maxupward` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxFileSize <Int64>`

> Taille maximale du fichier en octets à inclure dans les résultats. 0 signifie illimité.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `maxlength`, `maxsize` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinFileSize <Int64>`

> Taille minimale de fichier en octets à inclure dans les résultats. 0 signifie aucune taille minimale.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `minsize`, `minlength` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModifiedAfter <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> Inclure uniquement les fichiers modifiés après cette date/heure (UTC).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ma`, `after` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModifiedBefore <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> Inclure uniquement les fichiers modifiés avant cette date/heure (UTC).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `before`, `mb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AttributesToSkip <IO.FileAttributes>`

> Attributs de fichier à ignorer (par exemple, Système, Caché ou Aucun).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `None` |
| **Accept pipeline input?** | False |
| **Aliases** | `skipattr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Exclude <String[]>`

> Exclure les fichiers ou répertoires correspondant à ces modèles de caractères génériques (par exemple, *.tmp, *\bin\*).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `skiplike` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllMatches`

> Indique que l'applet de commande recherche plusieurs correspondances dans chaque ligne de texte. Sans ce paramètre, Select-String ne trouve que la première correspondance dans chaque ligne de texte.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-CaseSensitive`

> Indique que les correspondances de l'applet de commande sont sensibles à la casse. Par défaut, les correspondances ne sont pas sensibles à la casse.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Context <Int32[]>`

> Capture le nombre spécifié de lignes avant et après la ligne qui correspond au modèle.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Culture <String>`

> Spécifie un nom de culture correspondant au modèle spécifié. Le paramètre Culture doit être utilisé avec le paramètre SimpleMatch. Le comportement par défaut utilise la culture de l'espace d'exécution PowerShell actuel (session).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Encoding <String>`

> Spécifie le type d'encodage pour le fichier cible. Prend en charge les valeurs compatibles avec Select-String et les encodages étendus .NET.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-List`

> Seule la première occurrence du texte correspondant est renvoyée à partir de chaque fichier d'entrée. C'est la façon la plus efficace de récupérer une liste de fichiers dont le contenu correspond à l'expression régulière.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-NoEmphasis`

> Désactive la mise en surbrillance des chaînes correspondantes dans la sortie.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-NotMatch`

> Le paramètre NotMatch recherche du texte qui ne correspond pas au modèle spécifié.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Quiet`

> Indique que l'applet de commande retourne une réponse simple au lieu d'un objet MatchInfo. La valeur retournée est $true si le modèle est trouvé ou $null si le modèle n'est pas trouvé.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Raw`

> Force l'applet de commande à générer uniquement les chaînes correspondantes, plutôt que des objets MatchInfo. Cela produit un comportement qui ressemble le plus à la commande Unix grep ou à la commande Windows findstr.exe.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-SimpleMatch`

> Indique que l'applet de commande utilise une correspondance simple plutôt qu'une correspondance par expression régulière. Dans une correspondance simple, Select-String recherche le texte du paramètre Pattern dans l'entrée. Il n'interprète pas la valeur du paramètre Pattern comme une instruction d'expression régulière.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRCopy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRExpand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRFind-DuplicateFiles.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRInvoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRMove-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRMove-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRMove-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRRemove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRRemove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRRemove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRRename-InProject.md)
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRStart-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRWrite-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRWrite-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRWrite-TextFileAtomic.md)
