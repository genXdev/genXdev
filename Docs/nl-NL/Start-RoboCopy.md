# Start-RoboCopy

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `xc`, `rc`

## Synopsis

> Biedt een PowerShell-wrapper voor de Robuuste Kopieerhulpprogramma (RoboCopy) van Microsoft.

## Description

Een uitgebreide wrapper voor de RoboCopy-opdrachtregelhulpprogramma die
robuste bestands- en directory-kopieermogelijkheden biedt. Deze functie stelt RoboCopy's
uitgebreide functieset beschikbaar via PowerShell-vriendelijke parameters terwijl het
meeste van zijn krachtige functionaliteit behouden blijft.

Belangrijkste functies:
- Directorysynchronisatie met spiegelopties
- Ondersteuning voor extra lange padnamen (>256 tekens)
- Beveiligingsinstellingen behouden
- Geavanceerde bestandskenmerkafhandeling
- Symbolische koppeling- en kruispuntbeheer
- Monitor-modus voor continue synchronisatie
- Prestatieoptimalisatie voor grote bestanden
- Netwerkcompressie-ondersteuning
- Herstelmodus voor falende apparaten

## Syntax

```powershell
Start-RoboCopy -Source <String> [[-DestinationDirectory] <String>] [[-Files] <String[]>] [[-Override] <String>] [-AttributeExcludeFilter <String>] [-AttributeIncludeFilter <String>] [-CompressibleContent] [-CopyOnlyDirectoryTreeStructureAndEmptyFiles] [-CopySymbolicLinksAsLinks] [-ExactTimestamps] [-FileExcludeFilter <String[]>] [-Force] [-IncludeSecurity] [-LargeFiles] [-LogAllFileNames] [-LogDirectoryNames] [-LogfileOverwrite] [-LogFilePath <String>] [-MaxFileAge <Int32>] [-MaxFileSize <Int32>] [-MaxLastAccessAge <Int32>] [-MinFileAge <Int32>] [-MinFileSize <Int32>] [-MinLastAccessAge <Int32>] [-Mirror] [-MonitorMode] [-MonitorModeRunHoursFrom <Int32>] [-MonitorModeRunHoursUntil <Int32>] [-MonitorModeThresholdMinutes <Int32>] [-MonitorModeThresholdNrOfChanges <Int32>] [-Move] [-MultiThreaded] [-RecoveryMode] [-RemoveAttributesAfterCopy <String>] [-ResetArchiveAttributeAfterSelection] [-SetAttributesAfterCopy <String>] [-SkipAllSymbolicLinks] [-SkipFilesWithoutArchiveAttribute] [-SkipSymbolicFileLinks] [-Unicode] [<CommonParameters>]

Start-RoboCopy [-SkipDirectories] [<CommonParameters>]

Start-RoboCopy [-CopyJunctionsAsJunctons] [-CopyOnlyDirectoryTreeStructure] [-DirectoryExcludeFilter <String[]>] [-MaxSubDirTreeLevelDepth <Int32>] [-SkipEmptyDirectories] [-SkipJunctions] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Source` | String | ✅ | — | 0 | — | De map, het bestandspad, of de map+zoekmasker |
| `-DestinationDirectory` | String | — | — | 1 | `".$([System.IO.Path]::DirectorySeparatorChar)"` | De doelmap om de gekopieerde bestanden en mappen in te plaatsen.
            Als deze map nog niet bestaat, worden alle ontbrekende mappen aangemaakt.
            Standaardwaarde = ".\" |
| `-Files` | String[] | — | — | 2 | `@()` | Optioneel zoekmasker voor het selecteren van de bestanden die moeten worden gekopieerd.
            Standaardwaarde = '*' 🌐 *Supports wildcards* |
| `-Mirror` | SwitchParameter | — | — | Named | — | Synchroniseert de inhoud van opgegeven mappen, verwijdert ook alle bestanden en mappen in de bestemming die niet in de bronbestaan |
| `-Move` | SwitchParameter | — | — | Named | — | Verplaatst in plaats van alle bestanden van bron naar bestemming te kopiëren |
| `-IncludeSecurity` | SwitchParameter | — | — | Named | — | Ook worden de eigenaar, beveiligingsdescriptors en controle-informatie van bestanden en mappen gekopieerd |
| `-SkipDirectories` | SwitchParameter | — | — | Named | — | Kopieert alleen bestanden van de bron en slaat submappen over (geen recursie) *(Parameter set: )* |
| `-SkipEmptyDirectories` | SwitchParameter | — | — | Named | — | Kopieert geen mappen als ze leeg zouden zijn *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructure` | SwitchParameter | — | — | Named | — | Alleen directorystructuur maken *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructureAndEmptyFiles` | SwitchParameter | — | — | Named | — | Maak alleen directorystructuur en nul-byte bestanden aan |
| `-SkipAllSymbolicLinks` | SwitchParameter | — | — | Named | — | Kopieer geen symbolische koppelingen, junctions of de inhoud waarnaar ze verwijzen |
| `-SkipSymbolicFileLinks` | SwitchParameter | — | — | Named | — | Geen symbolische koppelingen van bestanden kopiëren maar directory junctions wel volgen |
| `-CopySymbolicLinksAsLinks` | SwitchParameter | — | — | Named | — | In plaats van de inhoud te kopiëren waar symbolische koppelingen naar verwijzen, kopieert u de koppelingen zelf |
| `-SkipJunctions` | SwitchParameter | — | — | Named | — | Kopieer geen directory junctions (symbolische koppeling voor een map) of de inhoud waarnaar ze verwijzen *(Parameter set: )* |
| `-CopyJunctionsAsJunctons` | SwitchParameter | — | — | Named | — | Kopieer in plaats van de inhoud waar de junctions naar verwijzen, de junctions zelf *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Zal alle bestanden kopiëren, zelfs als ze ouder zijn dan die in de bestemming |
| `-SkipFilesWithoutArchiveAttribute` | SwitchParameter | — | — | Named | — | Kopieert alleen bestanden waarvan het archiefattribuut is ingesteld |
| `-ResetArchiveAttributeAfterSelection` | SwitchParameter | — | — | Named | — | Naast het kopiëren van alleen bestanden die het archiefattribuut hebben ingesteld, wordt dit attribuut vervolgens op de bron gereset |
| `-FileExcludeFilter` | String[] | — | — | Named | `@()` | Sluit alle bestanden uit die overeenkomen met een van deze namen/paden/wildcards 🌐 *Supports wildcards* |
| `-DirectoryExcludeFilter` | String[] | — | — | Named | `@()` | Sluit alle mappen uit die overeenkomen met een van deze namen/paden/jokers *(Parameter set: )* 🌐 *Supports wildcards* |
| `-AttributeIncludeFilter` | String | — | — | Named | — | Alleen bestanden kopiëren die al deze kenmerken hebben ingesteld [RASHCNETO] |
| `-AttributeExcludeFilter` | String | — | — | Named | — | Sluit bestanden uit die een van deze kenmerken hebben ingesteld [RASHCNETO] |
| `-SetAttributesAfterCopy` | String | — | — | Named | — | Hiermee worden de opgegeven kenmerken aan gekopieerde bestanden ingesteld [RASHCNETO] |
| `-RemoveAttributesAfterCopy` | String | — | — | Named | — | Verwijdert de opgegeven kenmerken van gekopieerde bestanden [RASHCNETO] |
| `-MaxSubDirTreeLevelDepth` | Int32 | — | — | Named | `-1` | Kopieer alleen de bovenste n niveaus van de bronmapstructuur *(Parameter set: )* |
| `-MinFileSize` | Int32 | — | — | Named | `-1` | Sla bestanden over die niet ten minste n bytes groot zijn |
| `-MaxFileSize` | Int32 | — | — | Named | `-1` | Bestanden overslaan die groter zijn dan n bytes |
| `-MinFileAge` | Int32 | — | — | Named | `-1` | Bestanden overslaan die niet minstens: n dagen oud zijn OF vóór n datum gemaakt zijn (als n < 1900 dan is n = n dagen, anders is n = YYYYMMDD datum) |
| `-MaxFileAge` | Int32 | — | — | Named | `-1` | Sla bestanden over die ouder zijn dan: n dagen OF gemaakt na n datum (als n < 1900 dan is n = n dagen, anders is n = YYYYMMDD datum) |
| `-MinLastAccessAge` | Int32 | — | — | Named | `-1` | Sla bestanden over die de afgelopen: n dagen zijn geopend OF voor n datum (als n < 1900 dan n = n dagen, anders n = DDMMJJJJ datum) |
| `-MaxLastAccessAge` | Int32 | — | — | Named | `-1` | Sla bestanden over die niet zijn geopend in: n dagen OF na n datum (als n < 1900 dan n = n dagen, anders n = YYYYMMDD datum) |
| `-RecoveryMode` | SwitchParameter | — | — | Named | — | Zal kort pauzeren en opnieuw proberen wanneer I/O-fouten optreden tijdens het kopiëren |
| `-MonitorMode` | SwitchParameter | — | — | Named | — | Blijft actief na het kopiëren, en kopieert aanvullende wijzigingen na een standaarddrempel van 10 minuten |
| `-MonitorModeThresholdMinutes` | Int32 | — | — | Named | `-1` | Voer opnieuw uit over n minuten Tijd, indien gewijzigd |
| `-MonitorModeThresholdNrOfChanges` | Int32 | — | — | Named | `-1` | Opnieuw uitvoeren wanneer er meer dan n wijzigingen worden gezien |
| `-MonitorModeRunHoursFrom` | Int32 | — | — | Named | `-1` | Uitvoeringsuren - tijdstippen waarop nieuwe kopieën kunnen worden gestart, starttijd, bereik 0000:2359 |
| `-MonitorModeRunHoursUntil` | Int32 | — | — | Named | `-1` | Uitvoeringsuren - tijdstippen waarop nieuwe kopieën kunnen worden gestart, eindtijd, bereik 0000:2359 |
| `-LogFilePath` | String | — | — | Named | — | Indien opgegeven, wordt logboekregistratie ook naar het opgegeven bestand uitgevoerd |
| `-LogfileOverwrite` | SwitchParameter | — | — | Named | — | Voeg niet toe aan het opgegeven logbestand, maar overschrijf in plaats daarvan |
| `-LogDirectoryNames` | SwitchParameter | — | — | Named | — | Voeg alle gescande mapnamen op in de uitvoer |
| `-LogAllFileNames` | SwitchParameter | — | — | Named | — | Neem alle gescande bestandsnamen op in de uitvoer, zelfs overgeslagen bestanden |
| `-Unicode` | SwitchParameter | — | — | Named | — | Output status als UNICODE |
| `-LargeFiles` | SwitchParameter | — | — | Named | — | Optimaliseert het kopiëren van grote bestanden |
| `-MultiThreaded` | SwitchParameter | — | — | Named | — | Optimaliseer prestaties door multithreaded kopiëren |
| `-CompressibleContent` | SwitchParameter | — | — | Named | — | Indien van toepassing, gebruik compressie bij het kopiëren van bestanden tussen servers om bandbreedte en tijd te besparen |
| `-ExactTimestamps` | SwitchParameter | — | — | Named | — | Wanneer ingesteld, wordt milliseconden-tijdstempel matching gebruikt in plaats van de standaard 2-seconden tolerantie |
| `-Override` | String | — | — 🌐 Remaining | 3 | — | Negeert, verwijdert, of voegt een opgegeven robocopy-parameter toe.

Gebruik:

Parameter toevoegen of vervangen:

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

Parameter verwijderen:

    -Override -/Switch

Meerdere overrides:

    -Override "/ReplaceThisSwitchWithValue:'SomeValue' -/RemoveThisSwitch /AddThisSwitch" |

## Examples

### ########################################################################Mirror a directory with security settings Start-RoboCopy -Source "C:\Projects" -DestinationDirectory "D:\Backup" `     -Mirror -IncludeSecurity

```powershell
########################################################################Mirror a directory with security settings
Start-RoboCopy -Source "C:\Projects" -DestinationDirectory "D:\Backup" `
    -Mirror -IncludeSecurity
```

### ########################################################################Monitor and sync changes every 10 minutes Start-RoboCopy -Source "C:\Documents" -DestinationDirectory "\\server\share" `     -MonitorMode -MonitorModeThresholdMinutes 10

```powershell
########################################################################Monitor and sync changes every 10 minutes
Start-RoboCopy -Source "C:\Documents" -DestinationDirectory "\\server\share" `
    -MonitorMode -MonitorModeThresholdMinutes 10
```

## Parameter Details

### `-Source <String>`

> De map, het bestandspad, of de map+zoekmasker

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DestinationDirectory <String>`

> De doelmap om de gekopieerde bestanden en mappen in te plaatsen.
            Als deze map nog niet bestaat, worden alle ontbrekende mappen aangemaakt.
            Standaardwaarde = ".\"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `".$([System.IO.Path]::DirectorySeparatorChar)"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Files <String[]>`

> Optioneel zoekmasker voor het selecteren van de bestanden die moeten worden gekopieerd.
            Standaardwaarde = '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Mirror`

> Synchroniseert de inhoud van opgegeven mappen, verwijdert ook alle bestanden en mappen in de bestemming die niet in de bronbestaan

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Move`

> Verplaatst in plaats van alle bestanden van bron naar bestemming te kopiëren

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeSecurity`

> Ook worden de eigenaar, beveiligingsdescriptors en controle-informatie van bestanden en mappen gekopieerd

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipDirectories`

> Kopieert alleen bestanden van de bron en slaat submappen over (geen recursie)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Default |

<hr/>
### `-SkipEmptyDirectories`

> Kopieert geen mappen als ze leeg zouden zijn

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-CopyOnlyDirectoryTreeStructure`

> Alleen directorystructuur maken

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-CopyOnlyDirectoryTreeStructureAndEmptyFiles`

> Maak alleen directorystructuur en nul-byte bestanden aan

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipAllSymbolicLinks`

> Kopieer geen symbolische koppelingen, junctions of de inhoud waarnaar ze verwijzen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSymbolicFileLinks`

> Geen symbolische koppelingen van bestanden kopiëren maar directory junctions wel volgen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CopySymbolicLinksAsLinks`

> In plaats van de inhoud te kopiëren waar symbolische koppelingen naar verwijzen, kopieert u de koppelingen zelf

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipJunctions`

> Kopieer geen directory junctions (symbolische koppeling voor een map) of de inhoud waarnaar ze verwijzen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-CopyJunctionsAsJunctons`

> Kopieer in plaats van de inhoud waar de junctions naar verwijzen, de junctions zelf

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-Force`

> Zal alle bestanden kopiëren, zelfs als ze ouder zijn dan die in de bestemming

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipFilesWithoutArchiveAttribute`

> Kopieert alleen bestanden waarvan het archiefattribuut is ingesteld

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ResetArchiveAttributeAfterSelection`

> Naast het kopiëren van alleen bestanden die het archiefattribuut hebben ingesteld, wordt dit attribuut vervolgens op de bron gereset

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FileExcludeFilter <String[]>`

> Sluit alle bestanden uit die overeenkomen met een van deze namen/paden/wildcards

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-DirectoryExcludeFilter <String[]>`

> Sluit alle mappen uit die overeenkomen met een van deze namen/paden/jokers

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | SkipDirectories |

<hr/>
### `-AttributeIncludeFilter <String>`

> Alleen bestanden kopiëren die al deze kenmerken hebben ingesteld [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AttributeExcludeFilter <String>`

> Sluit bestanden uit die een van deze kenmerken hebben ingesteld [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetAttributesAfterCopy <String>`

> Hiermee worden de opgegeven kenmerken aan gekopieerde bestanden ingesteld [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RemoveAttributesAfterCopy <String>`

> Verwijdert de opgegeven kenmerken van gekopieerde bestanden [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxSubDirTreeLevelDepth <Int32>`

> Kopieer alleen de bovenste n niveaus van de bronmapstructuur

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-MinFileSize <Int32>`

> Sla bestanden over die niet ten minste n bytes groot zijn

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxFileSize <Int32>`

> Bestanden overslaan die groter zijn dan n bytes

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinFileAge <Int32>`

> Bestanden overslaan die niet minstens: n dagen oud zijn OF vóór n datum gemaakt zijn (als n < 1900 dan is n = n dagen, anders is n = YYYYMMDD datum)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxFileAge <Int32>`

> Sla bestanden over die ouder zijn dan: n dagen OF gemaakt na n datum (als n < 1900 dan is n = n dagen, anders is n = YYYYMMDD datum)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinLastAccessAge <Int32>`

> Sla bestanden over die de afgelopen: n dagen zijn geopend OF voor n datum (als n < 1900 dan n = n dagen, anders n = DDMMJJJJ datum)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxLastAccessAge <Int32>`

> Sla bestanden over die niet zijn geopend in: n dagen OF na n datum (als n < 1900 dan n = n dagen, anders n = YYYYMMDD datum)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RecoveryMode`

> Zal kort pauzeren en opnieuw proberen wanneer I/O-fouten optreden tijdens het kopiëren

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorMode`

> Blijft actief na het kopiëren, en kopieert aanvullende wijzigingen na een standaarddrempel van 10 minuten

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeThresholdMinutes <Int32>`

> Voer opnieuw uit over n minuten Tijd, indien gewijzigd

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeThresholdNrOfChanges <Int32>`

> Opnieuw uitvoeren wanneer er meer dan n wijzigingen worden gezien

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeRunHoursFrom <Int32>`

> Uitvoeringsuren - tijdstippen waarop nieuwe kopieën kunnen worden gestart, starttijd, bereik 0000:2359

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeRunHoursUntil <Int32>`

> Uitvoeringsuren - tijdstippen waarop nieuwe kopieën kunnen worden gestart, eindtijd, bereik 0000:2359

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogFilePath <String>`

> Indien opgegeven, wordt logboekregistratie ook naar het opgegeven bestand uitgevoerd

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogfileOverwrite`

> Voeg niet toe aan het opgegeven logbestand, maar overschrijf in plaats daarvan

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogDirectoryNames`

> Voeg alle gescande mapnamen op in de uitvoer

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogAllFileNames`

> Neem alle gescande bestandsnamen op in de uitvoer, zelfs overgeslagen bestanden

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Unicode`

> Output status als UNICODE

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LargeFiles`

> Optimaliseert het kopiëren van grote bestanden

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MultiThreaded`

> Optimaliseer prestaties door multithreaded kopiëren

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CompressibleContent`

> Indien van toepassing, gebruik compressie bij het kopiëren van bestanden tussen servers om bandbreedte en tijd te besparen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExactTimestamps`

> Wanneer ingesteld, wordt milliseconden-tijdstempel matching gebruikt in plaats van de standaard 2-seconden tolerantie

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Override <String>`

> Negeert, verwijdert, of voegt een opgegeven robocopy-parameter toe.

Gebruik:

Parameter toevoegen of vervangen:

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

Parameter verwijderen:

    -Override -/Switch

Meerdere overrides:

    -Override "/ReplaceThisSwitchWithValue:'SomeValue' -/RemoveThisSwitch /AddThisSwitch"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

> This parameter accepts all remaining arguments.

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Find-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Find-Item.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Remove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Rename-InProject.md)
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Set-LocationParent5.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Write-TextFileAtomic.md)
