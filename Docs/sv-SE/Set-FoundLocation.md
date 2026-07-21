# Set-FoundLocation

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `lcd`

## Synopsis

> Hittar den första matchande filen eller mappen och ställer in platsen till den.

## Description

Denna cmdlet hjälper dig att snabbt byta kataloger genom att använda sökfraser som hittar den första matchande mappen eller filen (valfritt) och byter katalog till den. Stöder avancerad filtrering efter innehåll, filattribut, storlek, ändringsdatum och många andra kriterier.

## Syntax

```powershell
Set-FoundLocation -Name <String> [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-DirectoriesAndFiles] [-DriveLetter <Char[]>] [-ExactMatch] [-Exclude <String[]>] [-File] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoRecurse] [-Push] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Set-FoundLocation -InputObject <Object> [<CommonParameters>]

Set-FoundLocation [[-Content] <String[]>] [-CaseSensitive] [-Culture <String>] [-Encoding <String>] [-NotMatch] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | Filnamn eller mönster att söka efter. 🌐 *Supports wildcards* |
| `-InputObject` | Object | ✅ | ✅ (ByValue, ByPropertyName) | Named | — | Filnamn eller mönster att söka efter från pipeline-indata. Standard är '*' *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | `@(".*")` | Reguljärt uttrycksmönster för att söka i filinnehåll *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Category` | String[] | — | — | Named | — | Endast utdatafiler som tillhör valda kategorier |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Maximal grad av parallellism för kataloguppgifter |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Valfritt: timeout för annullering i sekunder |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Sök över alla tillgängliga enheter |
| `-File` | SwitchParameter | — | — | Named | — | Sök endast efter filnamn och byt till mappen för den första hittade filen |
| `-DirectoriesAndFiles` | SwitchParameter | — | — | Named | — | Inkludera filnamnsmatchning och byt till mappen för den första funna filen |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Inkludera alternativa dataströmmar i sökresultat |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Gå inte in i underkataloger rekursivt |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Följ symboliska länkar och korsningspunkter under kataloggenomgång. |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | Inkludera optiska diskenheter |
| `-SearchDrives` | String[] | — | — | Named | `@()` | Valfritt: sök på specifika enheter |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | Valfritt: sök på specifika enheter |
| `-Root` | String[] | — | — | Named | `@()` | Valfritt: sök i specifika basmappar kombinerade med angivna Namn |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | Inkludera icke-textfiler (binärfiler, bilder, etc.) när du söker i filinnehåll. |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `(
            [System.IO.MatchCasing]::PlatformDefault)` | Hämtar eller anger skiftlägeskänsligheten för filer och kataloger |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | När inställd, utför innehållssökning inom alternativa dataströmmar (ADS). När inte inställd, utmatar ADS-filinfo utan att söka deras innehåll. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Maximalt rekursionsdjup för kataloggenomgång. 0 betyder obegränsat. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Maximal filstorlek i bytes som ska inkluderas i resultaten. 0 betyder obegränsat. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Minsta filstorlek i byte som ska inkluderas i resultaten. 0 innebär inget minimum. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Inkludera endast filer som har ändrats efter denna datum/tid (UTC). |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Inkludera endast filer som ändrats före detta datum/tid (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `(
            [System.IO.FileAttributes]::System)` | Filattribut att hoppa över (t.ex. System, Dold eller Ingen). |
| `-Exclude` | String[] | — | — | Named | `@("*\\.git\\*")` | Uteslut filer eller kataloger som matchar dessa jokerteckenmönster (t.ex. *.tmp, *\bin\*). |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Anger att cmdlet-matchningar är skiftlägeskänsliga. Som standard är matchningar inte skiftlägeskänsliga. *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Anger ett kulturnamn som matchar det angivna mönstret. Parametern Kultur måste användas tillsammans med parametern SimpleMatch. Standardbeteendet använder kulturen för den aktuella PowerShell-runspace (sessionen). *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `"UTF8NoBOM"` | Anger kodningstypen för målfilen. Standardvärdet är utf8NoBOM. *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | Parametern NotMatch söker efter text som inte matchar det angivna mönstret. *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | Anger att cmdleten använder en enkel matchning i stället för en matchning med reguljära uttryck. I en enkel matchning söker Select-String i indata efter texten i parametern Pattern. Det tolkar inte värdet för parametern Pattern som ett reguljärt uttryck. *(Parameter set: )* |
| `-Push` | SwitchParameter | — | — | Named | — | Använd Push-Location istället för Set-Location och tryck platsen på platsstacken. |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | När den är inställd, övervägs endast exakta namnmatchningar. Som standard används jokerteckensmatchning om inte namnet innehåller jokertecken. |

## Examples

### Set-FoundLocation *.Console

```powershell
Set-FoundLocation *.Console
```

Ändringar i den första katalogen som matchar mönstret '*.Console'.

### lcd *.Console

```powershell
lcd *.Console
```

Ändringar i den första katalogen som matchar mönstret '*.Console' med hjälp av aliaset.

### Set-FoundLocation -Name "*.ps1" -Content "function"

```powershell
Set-FoundLocation -Name "*.ps1" -Content "function"
```

Ändringar i katalogen som innehåller den första PowerShell-filen som innehåller ordet 'function'.

### Set-FoundLocation *test* -File

```powershell
Set-FoundLocation *test* -File
```

Ändringar i katalogen som innehåller den första filen med 'test' i dess namn.

### Set-FoundLocation * '1\.\d+\.2025'

```powershell
Set-FoundLocation * '1\.\d+\.2025'
```

## Parameter Details

### `-Name <String>`

> Filnamn eller mönster att söka efter.

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

> Filnamn eller mönster att söka efter från pipeline-indata. Standard är '*'

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

> Reguljärt uttrycksmönster för att söka i filinnehåll

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

> Endast utdatafiler som tillhör valda kategorier

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

> Maximal grad av parallellism för kataloguppgifter

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

> Valfritt: timeout för annullering i sekunder

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

> Sök över alla tillgängliga enheter

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

> Sök endast efter filnamn och byt till mappen för den första hittade filen

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

> Inkludera filnamnsmatchning och byt till mappen för den första funna filen

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

> Inkludera alternativa dataströmmar i sökresultat

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

> Gå inte in i underkataloger rekursivt

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

> Följ symboliska länkar och korsningspunkter under kataloggenomgång.

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

> Inkludera optiska diskenheter

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

> Valfritt: sök på specifika enheter

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

> Valfritt: sök på specifika enheter

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

> Valfritt: sök i specifika basmappar kombinerade med angivna Namn

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

> Inkludera icke-textfiler (binärfiler, bilder, etc.) när du söker i filinnehåll.

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

> Hämtar eller anger skiftlägeskänsligheten för filer och kataloger

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

> När inställd, utför innehållssökning inom alternativa dataströmmar (ADS). När inte inställd, utmatar ADS-filinfo utan att söka deras innehåll.

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

> Maximalt rekursionsdjup för kataloggenomgång. 0 betyder obegränsat.

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

> Maximal filstorlek i bytes som ska inkluderas i resultaten. 0 betyder obegränsat.

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

> Minsta filstorlek i byte som ska inkluderas i resultaten. 0 innebär inget minimum.

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

> Inkludera endast filer som har ändrats efter denna datum/tid (UTC).

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

> Inkludera endast filer som ändrats före detta datum/tid (UTC).

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

> Filattribut att hoppa över (t.ex. System, Dold eller Ingen).

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

> Uteslut filer eller kataloger som matchar dessa jokerteckenmönster (t.ex. *.tmp, *\bin\*).

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

> Anger att cmdlet-matchningar är skiftlägeskänsliga. Som standard är matchningar inte skiftlägeskänsliga.

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

> Anger ett kulturnamn som matchar det angivna mönstret. Parametern Kultur måste användas tillsammans med parametern SimpleMatch. Standardbeteendet använder kulturen för den aktuella PowerShell-runspace (sessionen).

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

> Anger kodningstypen för målfilen. Standardvärdet är utf8NoBOM.

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

> Parametern NotMatch söker efter text som inte matchar det angivna mönstret.

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

> Anger att cmdleten använder en enkel matchning i stället för en matchning med reguljära uttryck. I en enkel matchning söker Select-String i indata efter texten i parametern Pattern. Det tolkar inte värdet för parametern Pattern som ett reguljärt uttryck.

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

> Använd Push-Location istället för Set-Location och tryck platsen på platsstacken.

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

> När den är inställd, övervägs endast exakta namnmatchningar. Som standard används jokerteckensmatchning om inte namnet innehåller jokertecken.

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

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Find-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Find-Item.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Remove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Rename-InProject.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Write-TextFileAtomic.md)
