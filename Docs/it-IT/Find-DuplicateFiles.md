# Find-DuplicateFiles

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `fdf`

## Synopsis

> Trova file duplicati in più directory basandosi su criteri configurabili.

## Description

Cerca ricorsivamente nei directory specificati i file duplicati. I file sono considerati duplicati se il contenuto è esattamente identico o inizia con lo stesso contenuto (per confronto parziale usando il parametro -ComparePartial). Il cmdlet utilizza un hash rapido dei byte iniziali del file per un raggruppamento efficiente prima di eseguire confronti completi del contenuto. La dimensione di questo hash rapido può essere configurata con il parametro -CompareByteLength, consentendo un equilibrio tra prestazioni e accuratezza nel rilevamento dei duplicati. Solo i file che hanno una lunghezza minima pari al valore di CompareByteLength saranno considerati per il rilevamento dei duplicati; i file più piccoli verranno raggruppati in base al solo nome del file.

## Syntax

```powershell
Find-DuplicateFiles [[-Name] <String[]>] [[-RelativeBasePath] <String>] [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-CompareByteLength <Int32>] [-ComparePartial] [-Directory] [-DriveLetter <Char[]>] [-Exclude <String[]>] [-FilesAndDirectories] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-Input <Object>] [-LimitToRoot] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoLinks] [-NoRecurse] [-PassThru] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Find-DuplicateFiles [[-Content] <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>] [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 1 | `@('*')` | Nome del file o criterio di ricerca. Il valore predefinito è '*' 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | Nome file o criterio di ricerca dall'input della pipeline. Il valore predefinito è '*' 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 2 | `@('.*')` | Modello di espressione regolare per cercare all'interno del contenuto *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 3 | `'.\'` | Percorso base per la risoluzione dei percorsi relativi nell'output |
| `-Category` | String[] | — | — | Named | — | Solo file di output appartenenti alle categorie selezionate |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Grado massimo di parallelismo per le attività di directory |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Opzionale: timeout di annullamento in secondi |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Cerca in tutte le unità disponibili |
| `-Directory` | SwitchParameter | — | — | Named | — | Cerca solo le directory |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | — | Includi sia file che directory |
| `-PassThru` | SwitchParameter | — | — | Named | — | Restituisci gli elementi corrispondenti come oggetti |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Includi flussi di dati alternativi nei risultati di ricerca |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Non ricorrere nelle sottodirectory |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Segue i collegamenti simbolici e i junction durante l'attraversamento delle directory |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | Includi unità disco ottiche |
| `-SearchDrives` | String[] | — | — | Named | `@()` | Facoltativo: cerca unità specifiche |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | Facoltativo: cerca unità specifiche |
| `-Root` | String[] | — | — | Named | `@()` | Facoltativo: cercare directory specifiche |
| `-LimitToRoot` | SwitchParameter | — | — | Named | — | Impone la ricerca solo nelle directory radice rimuovendo i componenti della directory dagli input di Nome |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | Includi i file non di testo nella ricerca del contenuto dei file |
| `-NoLinks` | SwitchParameter | — | — | Named | — | Forza la modalità non presidiata e non genererà collegamenti |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `[System.IO.MatchCasing]::PlatformDefault` | Ottiene o imposta la distinzione tra maiuscole e minuscole per file e directory |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | Se impostato, esegue la ricerca del contenuto all'interno dei flussi di dati alternativi (ADS) |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Profondità massima di ricorsione per l'attraversamento delle directory. 0 significa illimitato. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Profondità massima di ricorsione per la ricerca di continuazione verso l'alto nell'albero. 0 significa disabilitato. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Dimensione massima del file in byte da includere nei risultati. 0 significa illimitato. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Dimensione minima del file in byte da includere nei risultati. 0 significa nessun minimo. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Includi solo i file modificati dopo questa data/ora (UTC) |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Includi solo i file modificati prima di questa data/ora (UTC) |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | Attributi del file da saltare (ad es. Sistema, Nascosto o Nessuno) |
| `-Exclude` | String[] | — | — | Named | `@('*\.git\*')` | Escludere file o directory corrispondenti a questi modelli con caratteri jolly |
| `-AllMatches` | SwitchParameter | — | — | Named | — | Cerca più di una corrispondenza in ogni riga di testo *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Le corrispondenze fanno distinzione tra maiuscole e minuscole *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | Acquisisce le righe di contesto intorno alle corrispondenze *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Nome della cultura utilizzata per il pattern matching *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `'UTF8NoBOM'` | Specifica la codifica per i file di destinazione *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | — | Viene restituita solo la prima corrispondenza per file *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | — | Disabilita l'evidenziazione delle stringhe corrispondenti nell'output *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | Il parametro NotMatch trova il testo che non corrisponde al modello *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | — | Output solo le stringhe corrispondenti invece degli oggetti MatchInfo *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | Utilizza il matching di stringhe semplice invece delle regex *(Parameter set: )* |
| `-ComparePartial` | SwitchParameter | — | — | Named | — | Restituirà file con dimensioni diverse purché inizino con lo stesso nome file e contenuto, questo rileva download/copie interrotti |
| `-CompareByteLength` | Int32 | — | — | Named | `65536` | Confronta rapidamente la lunghezza in byte dei file, utile per indicizzazione veloce e ricerca di duplicati, questo non confronterà il contenuto dei file |

## Examples

### Find duplicate text files in the Documents folder based on exact content: Find-DuplicateFiles ~\Documents\*.doc* -ComparePartial

```powershell
Find duplicate text files in the Documents folder based on exact content:
Find-DuplicateFiles ~\Documents\*.doc* -ComparePartial
```

### Removes all duplicate media files in the Pictures and Videos folders, keeping only one copy of each duplicate set: (Find-DuplicateFiles ~\Pictures\*, ~\Videos\* -Category Pictures, Videos -ComparePartial).Duplicates.FullName | Remove-Item -Force -Verbose

```powershell
Removes all duplicate media files in the Pictures and Videos folders, keeping only one copy of each duplicate set:
(Find-DuplicateFiles ~\Pictures\*, ~\Videos\* -Category Pictures, Videos -ComparePartial).Duplicates.FullName | Remove-Item -Force -Verbose
```

## Parameter Details

### `-Name <String[]>`

> Nome del file o criterio di ricerca. Il valore predefinito è '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `@('*')` |
| **Accept pipeline input?** | False |
| **Aliases** | `SourceFolder` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Input <Object>`

> Nome file o criterio di ricerca dall'input della pipeline. Il valore predefinito è '*'

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

> Modello di espressione regolare per cercare all'interno del contenuto

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@('.*')` |
| **Accept pipeline input?** | False |
| **Aliases** | `mc`, `matchcontent`, `regex`, `Pattern` |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | WithPattern |

<hr/>
### `-RelativeBasePath <String>`

> Percorso base per la risoluzione dei percorsi relativi nell'output

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `'.\'` |
| **Accept pipeline input?** | False |
| **Aliases** | `base` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Category <String[]>`

> Solo file di output appartenenti alle categorie selezionate

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

> Grado massimo di parallelismo per le attività di directory

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `threads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeoutSeconds <Int32>`

> Opzionale: timeout di annullamento in secondi

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

> Cerca in tutte le unità disponibili

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Directory`

> Cerca solo le directory

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `dir` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FilesAndDirectories`

> Includi sia file che directory

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `both`, `DirectoriesAndFiles` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> Restituisci gli elementi corrispondenti come oggetti

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeAlternateFileStreams`

> Includi flussi di dati alternativi nei risultati di ricerca

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoRecurse`

> Non ricorrere nelle sottodirectory

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FollowSymlinkAndJunctions`

> Segue i collegamenti simbolici e i junction durante l'attraversamento delle directory

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `symlinks`, `sl` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeOpticalDiskDrives`

> Includi unità disco ottiche

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchDrives <String[]>`

> Facoltativo: cerca unità specifiche

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | `drives` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DriveLetter <Char[]>`

> Facoltativo: cerca unità specifiche

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Root <String[]>`

> Facoltativo: cercare directory specifiche

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LimitToRoot`

> Impone la ricerca solo nelle directory radice rimuovendo i componenti della directory dagli input di Nome

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `limit` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeNonTextFileMatching`

> Includi i file non di testo nella ricerca del contenuto dei file

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `binary` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoLinks`

> Forza la modalità non presidiata e non genererà collegamenti

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nl`, `ForceUnattenedMode` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CaseNameMatching <IO.MatchCasing>`

> Ottiene o imposta la distinzione tra maiuscole e minuscole per file e directory

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `[System.IO.MatchCasing]::PlatformDefault` |
| **Accept pipeline input?** | False |
| **Aliases** | `casing`, `CaseSearchMaskMatching` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchADSContent`

> Se impostato, esegue la ricerca del contenuto all'interno dei flussi di dati alternativi (ADS)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxRecursionDepth <Int32>`

> Profondità massima di ricorsione per l'attraversamento delle directory. 0 significa illimitato.

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

> Profondità massima di ricorsione per la ricerca di continuazione verso l'alto nell'albero. 0 significa disabilitato.

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

> Dimensione massima del file in byte da includere nei risultati. 0 significa illimitato.

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

> Dimensione minima del file in byte da includere nei risultati. 0 significa nessun minimo.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `minsize`, `minlength` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModifiedAfter <DateTime>`

> Includi solo i file modificati dopo questa data/ora (UTC)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ma`, `after` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModifiedBefore <DateTime>`

> Includi solo i file modificati prima di questa data/ora (UTC)

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

> Attributi del file da saltare (ad es. Sistema, Nascosto o Nessuno)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `[System.IO.FileAttributes]::System` |
| **Accept pipeline input?** | False |
| **Aliases** | `skipattr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Exclude <String[]>`

> Escludere file o directory corrispondenti a questi modelli con caratteri jolly

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@('*\.git\*')` |
| **Accept pipeline input?** | False |
| **Aliases** | `skiplike` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllMatches`

> Cerca più di una corrispondenza in ogni riga di testo

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
### `-CaseSensitive`

> Le corrispondenze fanno distinzione tra maiuscole e minuscole

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
### `-Context <Int32[]>`

> Acquisisce le righe di contesto intorno alle corrispondenze

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

> Nome della cultura utilizzata per il pattern matching

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

> Specifica la codifica per i file di destinazione

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'UTF8NoBOM'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-List`

> Viene restituita solo la prima corrispondenza per file

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
### `-NoEmphasis`

> Disabilita l'evidenziazione delle stringhe corrispondenti nell'output

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
### `-NotMatch`

> Il parametro NotMatch trova il testo che non corrisponde al modello

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
### `-Raw`

> Output solo le stringhe corrispondenti invece degli oggetti MatchInfo

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
### `-SimpleMatch`

> Utilizza il matching di stringhe semplice invece delle regex

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
### `-ComparePartial`

> Restituirà file con dimensioni diverse purché inizino con lo stesso nome file e contenuto, questo rileva download/copie interrotti

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CompareByteLength <Int32>`

> Confronta rapidamente la lunghezza in byte dei file, utile per indicizzazione veloce e ricerca di duplicati, questo non confronterà il contenuto dei file

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `65536` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Expand-Path.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Find-Item.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Remove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Rename-InProject.md)
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Write-TextFileAtomic.md)
