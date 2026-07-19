# Move-FilesToDateFolder

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> Verplaatst bestanden die overeenkomen met zoekcriteria naar op datum gebaseerde submappen.

## Description

Zoekt naar bestanden met dezelfde parameterset als `Find-Item` en verplaatst elk gevonden bestand naar een submap van `TargetFolder` op basis van de aanmaak- of mediadatum van het bestand. De cmdlet ondersteunt het matchen van inhoud, zoekopdrachten over de hele schijf en vele filters. Het kan optioneel lege bronmappen verwijderen na het verplaatsen.

Probeert verschillende strategieën om een nauwkeurige aanmaak- of vastlegdatum voor het opgegeven bestand te bepalen. Strategieën omvatten het lezen van EXIF-metadata van afbeeldingen, het parseren van datum-/tijdinformatie uit bestandsnamen en het terugvallen op de laatste schrijftijd van het bestand wanneer geen andere betrouwbare informatie beschikbaar is.

## Syntax

```powershell
Move-FilesToDateFolder -TargetFolder <String> [[-Name] <String[]>] [[-RelativeBasePath] <String>] [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-DeleteEmptyDirs] [-Directory] [-DriveLetter <Char[]>] [-Exclude <String[]>] [-FilesAndDirectories] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-Input <Object>] [-LimitToRoot] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoLinks] [-NoRecurse] [-PassThru] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TargetFolderNameDateSyntax <String>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Move-FilesToDateFolder [[-Content] <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>] [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-TargetFolder` | String | ✅ | — | 0 | — | Doelmap waar overeenkomende bestanden worden verplaatst naar submappen op basis van datum |
| `-Name` | String[] | — | — | 1 | `@('*')` | [NL] Bestandsnaam of patroon om naar te zoeken. Standaard is '*'. 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | Bestandsnaam of patroon om te zoeken uit pijplijninvoer. Standaard is '*' 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 2 | `@('.*')` | Reguliere expressie patroon om te zoeken in inhoud *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 3 | `'.\'` | Basispad voor het oplossen van relatieve paden in uitvoer |
| `-Category` | String[] | — | — | Named | — | Alleen bestanden die tot geselecteerde categorieën behoren |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Maximale mate van parallellisme voor directory-taken |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Optioneel: time-out voor annulering in seconden |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Doorzoek alle beschikbare schijven |
| `-Directory` | SwitchParameter | — | — | Named | — | Zoek alleen naar mappen |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | — | Inclusief zowel bestanden als mappen |
| `-PassThru` | SwitchParameter | — | — | Named | — | Output matched items as objects |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Alternatieve gegevensstromen opnemen in zoekresultaten |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Niet recursief in subdirectories |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Volg symbolische koppelingen en junctions tijdens het doorlopen van mappen |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | Inclusief optische schijfstations |
| `-SearchDrives` | String[] | — | — | Named | `@()` | Optioneel: specifieke schijven doorzoeken |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | Optioneel: specifieke schijven doorzoeken |
| `-Root` | String[] | — | — | Named | `@()` | Optioneel: specifieke mappen doorzoeken |
| `-LimitToRoot` | SwitchParameter | — | — | Named | — | Enforces searching only within Root directories by stripping directory components from Name inputs |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | Bij het doorzoeken van bestandsinhoud ook niet-tekstbestanden opnemen |
| `-NoLinks` | SwitchParameter | — | — | Named | — | Forceert de onbemande modus en genereert geen links |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `[System.IO.MatchCasing]::PlatformDefault` | Haalt de hoofdlettergevoeligheid voor bestanden en mappen op of stelt deze in |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | Wanneer ingesteld, voert het inhoudszoekopdrachten uit in alternatieve datastromen (ADS) |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Maximale recursiediepte voor directorytraversal. 0 betekent onbeperkt. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Maximale recursiediepte voor het zoeken naar vervolg omhoog in de boom. 0 betekent uitgeschakeld. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Maximale bestandsgrootte in bytes om op te nemen in de resultaten. 0 betekent onbeperkt. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Minimale bestandsgrootte in bytes om op te nemen in resultaten. 0 betekent geen minimum. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Alleen bestanden die na deze datum/tijd (UTC) zijn gewijzigd. |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Alleen bestanden opnemen die zijn gewijzigd voor deze datum/tijd (UTC) |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | Bestandskenmerken om over te slaan (bijv. Systeem, Verborgen of Geen) |
| `-Exclude` | String[] | — | — | Named | `@('*\.git\*')` | Bestanden of mappen uitsluiten die overeenkomen met deze jokerpatronen |
| `-AllMatches` | SwitchParameter | — | — | Named | — | Zoek naar meer dan één overeenkomst in elke regel tekst *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Matches are case-sensitive *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | Legt contextregels vast rond overeenkomsten *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Cultuurnaam gebruikt voor patroonherkenning *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `'UTF8NoBOM'` | Specificeert codering voor doelbestanden *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | — | Alleen de eerste overeenkomst per bestand wordt geretourneerd *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | — | Schakelt markeren van overeenkomende tekenreeksen in uitvoer uit *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | De parameter NotMatch zoekt naar tekst die niet overeenkomt met het patroon *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | — | Output only matching strings instead of MatchInfo objects *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | Use simple string matching instead of regex *(Parameter set: )* |
| `-DeleteEmptyDirs` | SwitchParameter | — | — | Named | — | Lege brondirectories verwijderen na het verplaatsen van bestanden |
| `-TargetFolderNameDateSyntax` | String | — | — | Named | `'Year + Month'` | Syntaxis van de datum in de doelpaginanaam |

## Examples

### Move all pictures and videos to the corresponsing Android Onedrive App Image backup folders     Move-FilesToDateFolder -TargetFolder "~\onedrive\Pictures\Camera Roll" `                            -SourceFolder ~\Pictures\*, ~\onedrive\*, ~\desktop\* `                            -FollowSymlinkAndJunctions `                            -DeleteEmptyDirs `                            -Category 'Pictures', 'Videos' `                            -Confirm:$false

```powershell
Move all pictures and videos to the corresponsing Android Onedrive App Image backup folders
    Move-FilesToDateFolder -TargetFolder "~\onedrive\Pictures\Camera Roll" `
                           -SourceFolder ~\Pictures\*, ~\onedrive\*, ~\desktop\* `
                           -FollowSymlinkAndJunctions `
                           -DeleteEmptyDirs `
                           -Category 'Pictures', 'Videos' `
                           -Confirm:$false
```

### Move all jpg files from the current directory into date folders under `D:\Archive` (dry run):

```powershell
Move all jpg files from the current directory into date folders under
`D:\Archive` (dry run):
```

Move-FilesToDateFolder -TargetFolder 'D:\Archief' -Name '*.jpg' -WhatIf

### Move all files across drives matching `*.mp4` into monthly folders and delete empty source folders:

```powershell
Move all files across drives matching `*.mp4` into monthly folders and delete
empty source folders:
```

Move-FilesToDateFolder -TargetFolder 'E:\Media\Videos' -Name '.*\.mp4' -DeleteEmptyDirs

## Related Links

- [Move-FilesToDateFolder on GitHub](https://github.com/genXdev/genXdev)
