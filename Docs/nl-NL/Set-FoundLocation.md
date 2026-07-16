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
| `-Name` | String | ✅ | — | 0 | — | Bestandsnaam of patroon om naar te zoeken. 🌐 *Supports wildcards* |
| `-InputObject` | Object | ✅ | ✅ (ByValue, ByPropertyName) | Named | — | Bestandsnaam of patroon om te zoeken uit pijplijninvoer. Standaard is '*' *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | `@(".*")` | Reguliere expressiepatroon om in bestandsinhoud te zoeken *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Category` | String[] | — | — | Named | — | Alleen bestanden die tot geselecteerde categorieën behoren |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Maximale mate van parallellisme voor directory-taken |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Optioneel: time-out voor annulering in seconden |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Doorzoek alle beschikbare schijven |
| `-File` | SwitchParameter | — | — | Named | — | Search for filenames only and change to folder of first found file |
| `-DirectoriesAndFiles` | SwitchParameter | — | — | Named | — | Include filename matching and change to folder of first found file |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Alternatieve gegevensstromen opnemen in zoekresultaten |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Niet recursief in subdirectories |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Volg symbolische koppelingen en junctions tijdens het doorlopen van mappen |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | Inclusief optische schijfstations |
| `-SearchDrives` | String[] | — | — | Named | `@()` | Optioneel: specifieke schijven doorzoeken |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | Optioneel: specifieke schijven doorzoeken |
| `-Root` | String[] | — | — | Named | `@()` | Optioneel: specifieke basismappen doorzoeken in combinatie met opgegeven namen |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | Neem niet-tekstuele bestanden (binaire bestanden, afbeeldingen enz.) op bij het doorzoeken van bestandsinhoud |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `(
            [System.IO.MatchCasing]::PlatformDefault)` | Haalt de hoofdlettergevoeligheid voor bestanden en mappen op of stelt deze in |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | Wanneer ingesteld, wordt er inhoud gezocht binnen alternatieve data streams (ADS). Wanneer niet ingesteld, wordt ADS-bestandsinfo weergegeven zonder de inhoud te doorzoeken. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Maximale recursiediepte voor directorytraversal. 0 betekent onbeperkt. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Maximale bestandsgrootte in bytes om op te nemen in de resultaten. 0 betekent onbeperkt. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Minimale bestandsgrootte in bytes om op te nemen in resultaten. 0 betekent geen minimum. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Alleen bestanden opnemen die na deze datum/tijd (UTC) zijn gewijzigd. |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Alleen bestanden opnemen die zijn gewijzigd vóór deze datum/tijd (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `(
            [System.IO.FileAttributes]::System)` | Te overslaan bestandskenmerken (bijv. Systeem, Verborgen of Geen). |
| `-Exclude` | String[] | — | — | Named | `@("*\\.git\\*")` | Sluit bestanden of mappen uit die overeenkomen met deze jokerpatronen (bijv. *.tmp, *\bin\*). |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Geeft aan dat de cmdlet-matches hoofdlettergevoelig zijn. Standaard zijn matches niet hoofdlettergevoelig. *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Specificeert een cultuurnaam die overeenkomt met het opgegeven patroon. De parameter Culture moet worden gebruikt met de parameter SimpleMatch. Het standaardgedrag gebruikt de cultuur van de huidige PowerShell-runspace (sessie). *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `"UTF8NoBOM"` | Specifies de type of encoding for the target file. De standaardwaarde is utf8NoBOM. *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | De parameter NotMatch vindt tekst die niet overeenkomt met het opgegeven patroon. *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | Geeft aan dat de cmdlet een eenvoudige overeenkomst gebruikt in plaats van een reguliere expressie-overeenkomst. Bij een eenvoudige overeenkomst doorzoekt Select-String de invoer op de tekst in de parameter Pattern. Het interpreteert de waarde van de parameter Pattern niet als een reguliere expressie-instructie. *(Parameter set: )* |
| `-Push` | SwitchParameter | — | — | Named | — | Gebruik Push-Location in plaats van Set-Location en duw de locatie op de locatiestapel |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | When set, only exact name matches are considered. By default, wildcard matching is used unless the Name contains wildcard characters. |

## Related Links

- [Set-FoundLocation on GitHub](https://github.com/genXdev/genXdev)
