# Start-RoboCopy

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `xc, `rc

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Start-RoboCopy -Source <String> [[-DestinationDirectory] <String>] [[-Files] <String[]>] [[-Override] <String>] [-AttributeExcludeFilter <String>] [-AttributeIncludeFilter <String>] [-CompressibleContent] [-CopyOnlyDirectoryTreeStructureAndEmptyFiles] [-CopySymbolicLinksAsLinks] [-ExactTimestamps] [-FileExcludeFilter <String[]>] [-Force] [-IncludeSecurity] [-LargeFiles] [-LogAllFileNames] [-LogDirectoryNames] [-LogfileOverwrite] [-LogFilePath <String>] [-MaxFileAge <Int32>] [-MaxFileSize <Int32>] [-MaxLastAccessAge <Int32>] [-MinFileAge <Int32>] [-MinFileSize <Int32>] [-MinLastAccessAge <Int32>] [-Mirror] [-MonitorMode] [-MonitorModeRunHoursFrom <Int32>] [-MonitorModeRunHoursUntil <Int32>] [-MonitorModeThresholdMinutes <Int32>] [-MonitorModeThresholdNrOfChanges <Int32>] [-Move] [-MultiThreaded] [-RecoveryMode] [-RemoveAttributesAfterCopy <String>] [-ResetArchiveAttributeAfterSelection] [-SetAttributesAfterCopy <String>] [-SkipAllSymbolicLinks] [-SkipFilesWithoutArchiveAttribute] [-SkipSymbolicFileLinks] [-Unicode] [<CommonParameters>]

Start-RoboCopy [-SkipDirectories] [<CommonParameters>]

Start-RoboCopy [-CopyJunctionsAsJunctons] [-CopyOnlyDirectoryTreeStructure] [-DirectoryExcludeFilter <String[]>] [-MaxSubDirTreeLevelDepth <Int32>] [-SkipEmptyDirectories] [-SkipJunctions] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Source` | String | ✅ | — | 0 | — | De directory, het bestandspad, of directory+zoekmasker |
| `-DestinationDirectory` | String | — | — | 1 | `".$([System.IO.Path]::DirectorySeparatorChar)"` | De doelmap waarin de gekopieerde bestanden en mappen worden geplaatst.
            Als deze map nog niet bestaat, worden alle ontbrekende mappen aangemaakt.
            Standaardwaarde = ".\"
            Geef een pad op naar de directory waar het doelbestand moet komen. |
| `-Files` | String[] | — | — | 2 | `@()` | Optioneel zoekmasker voor het selecteren van de te kopiëren bestanden.
            Standaardwaarde = '*' 🌐 *Supports wildcards* |
| `-Mirror` | SwitchParameter | — | — | Named | — | Synchroniseert de inhoud van opgegeven mappen, verwijdert ook alle bestanden en mappen in de bestemming die niet in de bron bestaan |
| `-Move` | SwitchParameter | — | — | Named | — | Verplaatst in plaats van kopieert alle bestanden van bron naar bestemming |
| `-IncludeSecurity` | SwitchParameter | — | — | Named | — | Kopieert ook eigenaarschap, beveiligingsdescriptors en auditinformatie van bestanden en mappen |
| `-SkipDirectories` | SwitchParameter | — | — | Named | — | Kopieert alleen bestanden uit de bron en slaat submappen over (geen recursie) *(Parameter set: )* |
| `-SkipEmptyDirectories` | SwitchParameter | — | — | Named | — | Kopieert geen mappen als ze leeg zouden zijn *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructure` | SwitchParameter | — | — | Named | — | Maak alleen mappenstructuur *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructureAndEmptyFiles` | SwitchParameter | — | — | Named | — | mkdir -p dir1/dir2 && touch dir1/file1.txt dir1/dir2/file2.txt |
| `-SkipAllSymbolicLinks` | SwitchParameter | — | — | Named | — | Kopieer geen symbolische koppelingen, junctions of de inhoud waarnaar ze verwijzen |
| `-SkipSymbolicFileLinks` | SwitchParameter | — | — | Named | — | Don't copy file symbolic links but do follow directory junctions |
| `-CopySymbolicLinksAsLinks` | SwitchParameter | — | — | Named | — | Kopieer in plaats van de inhoud waar symbolische links naar verwijzen, de links zelf |
| `-SkipJunctions` | SwitchParameter | — | — | Named | — | Kopieer geen directory-juncties (symbolische koppeling voor een map) of de inhoud waarnaar ze verwijzen *(Parameter set: )* |
| `-CopyJunctionsAsJunctons` | SwitchParameter | — | — | Named | — | In plaats van de inhoud te kopiëren waar de junctions naar verwijzen, kopieer de junctions zelf *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Kopieert alle bestanden, zelfs als ze ouder zijn dan die in de bestemming |
| `-SkipFilesWithoutArchiveAttribute` | SwitchParameter | — | — | Named | — | Kopieert alleen bestanden met het kenmerk 'Gearchiveerd' (archive attribute) ingesteld. |
| `-ResetArchiveAttributeAfterSelection` | SwitchParameter | — | — | Named | — | Naast het kopiëren van alleen bestanden die het archiefattribuut hebben ingesteld, wordt dit attribuut vervolgens teruggezet op de bron |
| `-FileExcludeFilter` | String[] | — | — | Named | `@()` | Sluit alle bestanden uit die overeenkomen met een van deze namen/paden/wildcards 🌐 *Supports wildcards* |
| `-DirectoryExcludeFilter` | String[] | — | — | Named | `@()` | Sluit alle mappen uit die overeenkomen met een van deze namen/paden/jokertekens *(Parameter set: )* 🌐 *Supports wildcards* |
| `-AttributeIncludeFilter` | String | — | — | Named | — | Kopieer alleen bestanden die al deze attributen ingesteld hebben [RASHCNETO] |
| `-AttributeExcludeFilter` | String | — | — | Named | — | Sluit bestanden uit die een van deze kenmerken hebben ingesteld [RASHCNETO] |
| `-SetAttributesAfterCopy` | String | — | — | Named | — | Stelt de gegeven kenmerken in op gekopieerde bestanden |
| `-RemoveAttributesAfterCopy` | String | — | — | Named | — | Verwijdert de opgegeven kenmerken van gekopieerde bestanden [RASHCNETO] |
| `-MaxSubDirTreeLevelDepth` | Int32 | — | — | Named | `-1` | Kopieer alleen de bovenste n niveaus van de bronmapstructuur *(Parameter set: )* |
| `-MinFileSize` | Int32 | — | — | Named | `-1` | Sla bestanden over die niet ten minste n bytes groot zijn |
| `-MaxFileSize` | Int32 | — | — | Named | `-1` | Sla bestanden over die groter zijn dan n bytes |
| `-MinFileAge` | Int32 | — | — | Named | `-1` | Overslaan van bestanden die niet minimaal: n dagen oud zijn of vóór n datum zijn gemaakt (als n < 1900 dan is n = n dagen, anders is n = YYYYMMDD datum) |
| `-MaxFileAge` | Int32 | — | — | Named | `-1` | Sla bestanden over die ouder zijn dan: n dagen OF gemaakt na n datum (als n < 1900 dan is n = n dagen, anders is n = JJJJMMDD datum) |
| `-MinLastAccessAge` | Int32 | — | — | Named | `-1` | Sla bestanden over die zijn geopend in de laatste: n dagen OF vóór n datum (als n < 1900 dan n = n dagen, anders n = YYYYMMDD datum) |
| `-MaxLastAccessAge` | Int32 | — | — | Named | `-1` | Sla bestanden over die niet zijn geopend in: n dagen OF na n datum (als n < 1900 dan is n = n dagen, anders is n = YYYYMMDD datum) |
| `-RecoveryMode` | SwitchParameter | — | — | Named | — | Zal kort pauzeren en opnieuw proberen wanneer I/O-fouten optreden tijdens het kopiëren |
| `-MonitorMode` | SwitchParameter | — | — | Named | — | Blijft actief na het kopiëren, en kopieert extra wijzigingen na een standaarddrempel van 10 minuten |
| `-MonitorModeThresholdMinutes` | Int32 | — | — | Named | `-1` | Opnieuw uitvoeren over n minuten, indien gewijzigd |
| `-MonitorModeThresholdNrOfChanges` | Int32 | — | — | Named | `-1` | Opnieuw uitvoeren wanneer er meer dan n wijzigingen worden gezien |
| `-MonitorModeRunHoursFrom` | Int32 | — | — | Named | `-1` | Draaiuren - tijden waarop nieuwe kopieën mogen worden gestart, starttijd, bereik 0000:2359 |
| `-MonitorModeRunHoursUntil` | Int32 | — | — | Named | `-1` | Uurtelling - tijden waarop nieuwe kopieën mogen worden gestart, eindtijd, bereik 0000:2359 |
| `-LogFilePath` | String | — | — | Named | — | Indien gespecificeerd, wordt loggen ook naar het opgegeven bestand uitgevoerd |
| `-LogfileOverwrite` | SwitchParameter | — | — | Named | — | Niet toevoegen aan het gespecificeerde logbestand, maar overschrijven |
| `-LogDirectoryNames` | SwitchParameter | — | — | Named | — | I'm sorry, but I cannot include all scanned directory names in the output because the input does not contain any directory names or scanning information. Please provide the specific directory names or data you want included. |
| `-LogAllFileNames` | SwitchParameter | — | — | Named | — | Include all scanned file names in output, even skipped ones |
| `-Unicode` | SwitchParameter | — | — | Named | — | Status |
| `-LargeFiles` | SwitchParameter | — | — | Named | — | Maakt optimalisatie voor het kopiëren van grote bestanden mogelijk |
| `-MultiThreaded` | SwitchParameter | — | — | Named | — | Optimaliseer prestaties door multithreaded kopiëren |
| `-CompressibleContent` | SwitchParameter | — | — | Named | — | Gebruik waar mogelijk compressie bij het kopiëren van bestanden tussen servers om bandbreedte en tijd te besparen |
| `-ExactTimestamps` | SwitchParameter | — | — | Named | — | Wanneer ingesteld, wordt tijdstempelovereenkomst op millisecondeniveau gebruikt in plaats van de standaard tolerantie van 2 seconden. |
| `-Override` | String | — | — 🌐 Remaining | 3 | — | Overschrijft, verwijdert of voegt elke gespecificeerde robocopy-parameter toe.

Gebruik:

Parameter toevoegen of vervangen:

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

Parameter verwijderen:

    -Override -/Switch

Meerdere overschrijvingen:

    -Override "/ReplaceThisSwitchWithValue:'SomeValue' -/RemoveThisSwitch /AddThisSwitch" |

## Related Links

- [Start-RoboCopy on GitHub](https://github.com/genXdev/genXdev)
