# Set-FoundLocation

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `lcd`

## Synopsis

> Trova il primo file o cartella corrispondente e imposta la posizione su di esso.

## Description

Questo cmdlet ti aiuterà a cambiare rapidamente le directory utilizzando frasi di ricerca che troveranno la prima cartella o file corrispondente (opzionale) e cambierà la directory su di esso. Supporta il filtraggio avanzato per contenuto, attributi dei file, dimensioni, date di modifica e molti altri criteri.

## Syntax

```powershell
Set-FoundLocation -Name <String> [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-DirectoriesAndFiles] [-DriveLetter <Char[]>] [-ExactMatch] [-Exclude <String[]>] [-File] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoRecurse] [-Push] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Set-FoundLocation -InputObject <Object> [<CommonParameters>]

Set-FoundLocation [[-Content] <String[]>] [-CaseSensitive] [-Culture <String>] [-Encoding <String>] [-NotMatch] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | Nome file o criterio di ricerca. 🌐 *Supports wildcards* |
| `-InputObject` | Object | ✅ | ✅ (ByValue, ByPropertyName) | Named | — | Nome file o criterio di ricerca dall'input della pipeline. Il valore predefinito è '*' *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | `@(".*")` | Modello di espressione regolare per cercare all'interno del contenuto dei file *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Category` | String[] | — | — | Named | — | Solo file di output appartenenti alle categorie selezionate |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Grado massimo di parallelismo per le attività di directory |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Opzionale: timeout di annullamento in secondi |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Cerca in tutte le unità disponibili |
| `-File` | SwitchParameter | — | — | Named | — | Cerca solo i nomi dei file e passa alla cartella del primo file trovato |
| `-DirectoriesAndFiles` | SwitchParameter | — | — | Named | — | Includere la corrispondenza dei nomi file e passare alla cartella del primo file trovato |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Includi flussi di dati alternativi nei risultati di ricerca |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Non ricorrere nelle sottodirectory |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Segue i collegamenti simbolici e i junction durante l'attraversamento delle directory |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | Includi unità disco ottiche |
| `-SearchDrives` | String[] | — | — | Named | `@()` | Facoltativo: cerca unità specifiche |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | Facoltativo: cerca unità specifiche |
| `-Root` | String[] | — | — | Named | `@()` | Opzionale: cerca cartelle base specifiche combinate con i Names forniti |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | Includi file non di testo (binari, immagini, ecc.) durante la ricerca del contenuto dei file |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `(
            [System.IO.MatchCasing]::PlatformDefault)` | Ottiene o imposta la distinzione tra maiuscole e minuscole per file e directory |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | Quando impostato, esegue la ricerca del contenuto all'interno dei flussi di dati alternativi (ADS). Quando non impostato, mostra le informazioni sui file ADS senza cercarne il contenuto. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Profondità massima di ricorsione per l'attraversamento delle directory. 0 significa illimitato. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Dimensione massima del file in byte da includere nei risultati. 0 significa illimitato. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Dimensione minima del file in byte da includere nei risultati. 0 significa nessun minimo. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Includi solo i file modificati dopo questa data/ora (UTC). |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Includi solo i file modificati prima di questa data/ora (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `(
            [System.IO.FileAttributes]::System)` | Attributi del file da ignorare (ad es. Sistema, Nascosto o Nessuno). |
| `-Exclude` | String[] | — | — | Named | `@("*\\.git\\*")` | Escludi file o directory che corrispondono a questi modelli con caratteri jolly (ad es., *.tmp, *\bin\*). |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Indica che le corrispondenze del cmdlet sono sensibili alle maiuscole/minuscole. Per impostazione predefinita, le corrispondenze non sono sensibili alle maiuscole/minuscole. *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Specifica un nome di lingua da abbinare al modello specificato. Il parametro Culture deve essere utilizzato con il parametro SimpleMatch. Il comportamento predefinito utilizza la lingua del runspace PowerShell corrente (sessione). *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `"UTF8NoBOM"` | Specifica il tipo di codifica per il file di destinazione. Il valore predefinito è utf8NoBOM. *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | Il parametro NotMatch trova il testo che non corrisponde al pattern specificato. *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | Indica che il cmdlet utilizza una corrispondenza semplice anziché una corrispondenza tramite espressione regolare. In una corrispondenza semplice, Select-String cerca l'input per il testo nel parametro Pattern. Non interpreta il valore del parametro Pattern come un'istruzione di espressione regolare. *(Parameter set: )* |
| `-Push` | SwitchParameter | — | — | Named | — | Utilizzare Push-Location anziché Set-Location e inserire la posizione nello stack delle posizioni |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | Quando impostato, vengono considerate solo le corrispondenze esatte del nome. Per impostazione predefinita, viene utilizzata la corrispondenza con caratteri jolly a meno che il nome non contenga caratteri jolly. |

## Examples

### Set-FoundLocation *.Console

```powershell
Set-FoundLocation *.Console
```

Modifiche alla prima directory corrispondente al modello '*.Console'.

### lcd *.Console

```powershell
lcd *.Console
```

Modifiche al primo direttorio corrispondente al pattern '*.Console' utilizzando l'alias.

### Set-FoundLocation -Name "*.ps1" -Content "function"

```powershell
Set-FoundLocation -Name "*.ps1" -Content "function"
```

Passa alla directory che contiene il primo file PowerShell che contiene la parola 'function'.

### Set-FoundLocation *test* -File

```powershell
Set-FoundLocation *test* -File
```

Modifiche alla directory contenente il primo file con 'test' nel nome.

### Set-FoundLocation * '1\.\d+\.2025'

```powershell
Set-FoundLocation * '1\.\d+\.2025'
```

Modifiche alla directory contenente il primo file il cui contenuto corrisponde al pattern '1.\d+\.2025'.

## Parameter Details

### `-Name <String>`

> Nome file o criterio di ricerca.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `like`, `Path`, `LiteralPath`, `Query`, `SearchMask`, `Include` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-InputObject <Object>`

> Nome file o criterio di ricerca dall'input della pipeline. Il valore predefinito è '*'

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `FullName` |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | InputObject |

<hr/>
### `-Content <String[]>`

> Modello di espressione regolare per cercare all'interno del contenuto dei file

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `@(".*")` |
| **Accept pipeline input?** | False |
| **Aliases** | `mc`, `matchcontent`, `regex`, `Pattern` |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | WithPattern |

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
### `-File`

> Cerca solo i nomi dei file e passa alla cartella del primo file trovato

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `filename` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DirectoriesAndFiles`

> Includere la corrispondenza dei nomi file e passare alla cartella del primo file trovato

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `both`, `FilesAndDirectories` |
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

> Opzionale: cerca cartelle base specifiche combinate con i Names forniti

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeNonTextFileMatching`

> Includi file non di testo (binari, immagini, ecc.) durante la ricerca del contenuto dei file

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `binary` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CaseNameMatching <IO.MatchCasing>`

> Ottiene o imposta la distinzione tra maiuscole e minuscole per file e directory

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `(
            [System.IO.MatchCasing]::PlatformDefault)` |
| **Accept pipeline input?** | False |
| **Aliases** | `casing`, `CaseSearchMaskMatching` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchADSContent`

> Quando impostato, esegue la ricerca del contenuto all'interno dei flussi di dati alternativi (ADS). Quando non impostato, mostra le informazioni sui file ADS senza cercarne il contenuto.

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

> Includi solo i file modificati dopo questa data/ora (UTC).

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

> Includi solo i file modificati prima di questa data/ora (UTC).

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

> Attributi del file da ignorare (ad es. Sistema, Nascosto o Nessuno).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `(
            [System.IO.FileAttributes]::System)` |
| **Accept pipeline input?** | False |
| **Aliases** | `skipattr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Exclude <String[]>`

> Escludi file o directory che corrispondono a questi modelli con caratteri jolly (ad es., *.tmp, *\bin\*).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@("*\\.git\\*")` |
| **Accept pipeline input?** | False |
| **Aliases** | `skiplike` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CaseSensitive`

> Indica che le corrispondenze del cmdlet sono sensibili alle maiuscole/minuscole. Per impostazione predefinita, le corrispondenze non sono sensibili alle maiuscole/minuscole.

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

> Specifica un nome di lingua da abbinare al modello specificato. Il parametro Culture deve essere utilizzato con il parametro SimpleMatch. Il comportamento predefinito utilizza la lingua del runspace PowerShell corrente (sessione).

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

> Specifica il tipo di codifica per il file di destinazione. Il valore predefinito è utf8NoBOM.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `"UTF8NoBOM"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-NotMatch`

> Il parametro NotMatch trova il testo che non corrisponde al pattern specificato.

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

> Indica che il cmdlet utilizza una corrispondenza semplice anziché una corrispondenza tramite espressione regolare. In una corrispondenza semplice, Select-String cerca l'input per il testo nel parametro Pattern. Non interpreta il valore del parametro Pattern come un'istruzione di espressione regolare.

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
### `-Push`

> Utilizzare Push-Location anziché Set-Location e inserire la posizione nello stack delle posizioni

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExactMatch`

> Quando impostato, vengono considerate solo le corrispondenze esatte del nome. Per impostazione predefinita, viene utilizzata la corrispondenza con caratteri jolly a meno che il nome non contenga caratteri jolly.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Find-DuplicateFiles.md)
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
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Write-TextFileAtomic.md)
