# Start-RoboCopy

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `xc`, `rc`

## Synopsis

> Tillhandahåller ett PowerShell-gränssnitt för Microsofts Robust Copy (RoboCopy) verktyg.

## Description

En omfattande omslag för kommandoradsverktyget RoboCopy som ger robusta fil- och katalogkopieringsfunktioner. Den här funktionen exponerar RoboCopys omfattande funktionsuppsättning via PowerShell-vänliga parametrar samtidigt som den behåller det mesta av dess kraftfulla funktionalitet.

Viktiga funktioner:
- Katalogsynkronisering med speglingsalternativ
- Stöd för extra långa sökvägar (>256 tecken)
- Bevaring av säkerhetsinställningar
- Avancerad hantering av filattribut
- Hantering av symboliska länkar och junktioner
- Övervakningsläge för kontinuerlig synkronisering
- Prestandaoptimering för stora filer
- Stöd för nätverkskomprimering
- Återställningsläge för felande enheter

## Syntax

```powershell
Start-RoboCopy -Source <String> [[-DestinationDirectory] <String>] [[-Files] <String[]>] [[-Override] <String>] [-AttributeExcludeFilter <String>] [-AttributeIncludeFilter <String>] [-CompressibleContent] [-CopyOnlyDirectoryTreeStructureAndEmptyFiles] [-CopySymbolicLinksAsLinks] [-ExactTimestamps] [-FileExcludeFilter <String[]>] [-Force] [-IncludeSecurity] [-LargeFiles] [-LogAllFileNames] [-LogDirectoryNames] [-LogfileOverwrite] [-LogFilePath <String>] [-MaxFileAge <Int32>] [-MaxFileSize <Int32>] [-MaxLastAccessAge <Int32>] [-MinFileAge <Int32>] [-MinFileSize <Int32>] [-MinLastAccessAge <Int32>] [-Mirror] [-MonitorMode] [-MonitorModeRunHoursFrom <Int32>] [-MonitorModeRunHoursUntil <Int32>] [-MonitorModeThresholdMinutes <Int32>] [-MonitorModeThresholdNrOfChanges <Int32>] [-Move] [-MultiThreaded] [-RecoveryMode] [-RemoveAttributesAfterCopy <String>] [-ResetArchiveAttributeAfterSelection] [-SetAttributesAfterCopy <String>] [-SkipAllSymbolicLinks] [-SkipFilesWithoutArchiveAttribute] [-SkipSymbolicFileLinks] [-Unicode] [<CommonParameters>]

Start-RoboCopy [-SkipDirectories] [<CommonParameters>]

Start-RoboCopy [-CopyJunctionsAsJunctons] [-CopyOnlyDirectoryTreeStructure] [-DirectoryExcludeFilter <String[]>] [-MaxSubDirTreeLevelDepth <Int32>] [-SkipEmptyDirectories] [-SkipJunctions] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Source` | String | ✅ | — | 0 | — | Katalogen, filsökvägen eller katalogen+sökmask |
| `-DestinationDirectory` | String | — | — | 1 | `".$([System.IO.Path]::DirectorySeparatorChar)"` | Målmappen dit de kopierade filerna och katalogerna ska placeras.
            Om den här mappen inte finns ännu, kommer alla saknade kataloger att skapas.
            Standardvärde = ".\" |
| `-Files` | String[] | — | — | 2 | `@()` | Valfri sökmask för att välja de filer som behöver kopieras.
            Standardvärde = '*' 🌐 *Supports wildcards* |
| `-Mirror` | SwitchParameter | — | — | Named | — | Synkroniserar innehållet i angivna kataloger, kommer även att ta bort alla filer och kataloger i målet som inte finns i källan |
| `-Move` | SwitchParameter | — | — | Named | — | Kommer att flytta istället för att kopiera alla filer från källa till mål |
| `-IncludeSecurity` | SwitchParameter | — | — | Named | — | Kommer även att kopiera ägarskap, säkerhetsbeskrivningar och granskningsinformation för filer och kataloger |
| `-SkipDirectories` | SwitchParameter | — | — | Named | — | Kopierar endast filer från källan och hoppar över undermappar (ingen rekursion) *(Parameter set: )* |
| `-SkipEmptyDirectories` | SwitchParameter | — | — | Named | — | Kopierar inte kataloger om de skulle vara tomma *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructure` | SwitchParameter | — | — | Named | — | Skapa katalogträd endast *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructureAndEmptyFiles` | SwitchParameter | — | — | Named | — | Skapa katalogträd och filer med noll längd endast |
| `-SkipAllSymbolicLinks` | SwitchParameter | — | — | Named | — | Kopiera inte symboliska länkar, kopplingar eller innehållet de pekar på |
| `-SkipSymbolicFileLinks` | SwitchParameter | — | — | Named | — | Kopiera inte symboliska länkar till filer men följ katalogförgreningar. |
| `-CopySymbolicLinksAsLinks` | SwitchParameter | — | — | Named | — | Kopiera symboliska länkar som de är istället för att kopiera innehållet de pekar på. |
| `-SkipJunctions` | SwitchParameter | — | — | Named | — | Kopiera inte katalogförbindelser (symbolisk länk för en mapp) eller innehållet de pekar på *(Parameter set: )* |
| `-CopyJunctionsAsJunctons` | SwitchParameter | — | — | Named | — | Kopiera själva punkterna (junctions) istället för innehållet de pekar på. *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Kommer att kopiera alla filer även om de är äldre än de som finns i destinationen |
| `-SkipFilesWithoutArchiveAttribute` | SwitchParameter | — | — | Named | — | Kopierar endast filer som har arkivattributet inställt |
| `-ResetArchiveAttributeAfterSelection` | SwitchParameter | — | — | Named | — | Förutom att kopiera endast filer som har arkivattributet inställt, kommer detta sedan att återställa attributet på källan |
| `-FileExcludeFilter` | String[] | — | — | Named | `@()` | Uteslut alla filer som matchar något av dessa namn/sökvägar/jokertecken 🌐 *Supports wildcards* |
| `-DirectoryExcludeFilter` | String[] | — | — | Named | `@()` | Exkludera alla kataloger som matchar något av dessa namn/sökvägar/jokertecken *(Parameter set: )* 🌐 *Supports wildcards* |
| `-AttributeIncludeFilter` | String | — | — | Named | — | Kopiera endast filer som har alla dessa attribut inställda [RASHCNETO] |
| `-AttributeExcludeFilter` | String | — | — | Named | — | Uteslut filer som har något av dessa attribut inställt [RASHCNETO] |
| `-SetAttributesAfterCopy` | String | — | — | Named | — | Kommer att ställa in de angivna attributen på kopierade filer [RASHCNETO] |
| `-RemoveAttributesAfterCopy` | String | — | — | Named | — | Kommer att ta bort de angivna attributen från kopierade filer [RASHCNETO] |
| `-MaxSubDirTreeLevelDepth` | Int32 | — | — | Named | `-1` | Kopiera endast de översta n nivåerna av källkatalogträdet *(Parameter set: )* |
| `-MinFileSize` | Int32 | — | — | Named | `-1` | Hoppa över filer som är mindre än n byte stora |
| `-MaxFileSize` | Int32 | — | — | Named | `-1` | Hoppa över filer som är större än n byte |
| `-MinFileAge` | Int32 | — | — | Named | `-1` | Hoppa över filer som inte är minst: n dagar gamla ELLER skapade före datum n (om n < 1900 så är n = n dagar, annars n = YYYYMMDD-datum) |
| `-MaxFileAge` | Int32 | — | — | Named | `-1` | Hoppa över filer som är äldre än: n dagar ELLER skapade efter datum n (om n < 1900 så är n = n dagar, annars n = YYYYMMDD-datum) |
| `-MinLastAccessAge` | Int32 | — | — | Named | `-1` | Hoppa över filer som har använts inom de senaste: n dagarna ELLER före datum n (om n < 1900 är n = n dagar, annars är n = datum ÅÅÅÅMMDD) |
| `-MaxLastAccessAge` | Int32 | — | — | Named | `-1` | Hoppa över filer som inte har öppnats på: n dagar ELLER efter n datum (om n < 1900 så är n = n dagar, annars är n = datum i formatet YYYYMMDD) |
| `-RecoveryMode` | SwitchParameter | — | — | Named | — | Kommer tillfälligt att pausa och försöka igen när I/O-fel uppstår under kopiering |
| `-MonitorMode` | SwitchParameter | — | — | Named | — | Förblir aktiv efter kopiering och kopierar ytterligare ändringar efter en standardtröskel på 10 minuter. |
| `-MonitorModeThresholdMinutes` | Int32 | — | — | Named | `-1` | Kör igen om n minuter, om ändrad |
| `-MonitorModeThresholdNrOfChanges` | Int32 | — | — | Named | `-1` | Kör igen när fler än n ändringar ses |
| `-MonitorModeRunHoursFrom` | Int32 | — | — | Named | `-1` | Körtider - tidpunkter då nya kopior får startas, starttid, intervall 0000:2359 |
| `-MonitorModeRunHoursUntil` | Int32 | — | — | Named | `-1` | Körtider - tider då nya kopior kan startas, sluttid, intervall 0000:2359 |
| `-LogFilePath` | String | — | — | Named | — | Om angivet kommer loggning även att göras till angiven fil |
| `-LogfileOverwrite` | SwitchParameter | — | — | Named | — | Skriv inte över den angivna loggfilen, utan skriv över den istället. |
| `-LogDirectoryNames` | SwitchParameter | — | — | Named | — | Inkludera alla skannade katalognamn i utdata |
| `-LogAllFileNames` | SwitchParameter | — | — | Named | — | Inkludera alla skannade filnamn i utdata, även de som hoppades över |
| `-Unicode` | SwitchParameter | — | — | Named | — | Utdata status som UNICODE |
| `-LargeFiles` | SwitchParameter | — | — | Named | — | Aktiverar optimering för kopiering av stora filer |
| `-MultiThreaded` | SwitchParameter | — | — | Named | — | Optimera prestanda genom att göra flertrådad kopiering |
| `-CompressibleContent` | SwitchParameter | — | — | Named | — | Använd komprimering om möjligt när du kopierar filer mellan servrar för att spara bandbredd och tid. |
| `-ExactTimestamps` | SwitchParameter | — | — | Named | — | När den är inställd kommer den att använda millisekundstidsstämpel-matchning istället för standardtoleransen på 2 sekunder. |
| `-Override` | String | — | — 🌐 Remaining | 3 | — | Åsidosätter, tar bort eller lägger till en angiven robocopy-parameter.

Användning:

Lägg till eller ersätt parameter:

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

Ta bort parameter:

    -Override -/Switch

Flera åsidosättanden:

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

> Katalogen, filsökvägen eller katalogen+sökmask

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

> Målmappen dit de kopierade filerna och katalogerna ska placeras.
            Om den här mappen inte finns ännu, kommer alla saknade kataloger att skapas.
            Standardvärde = ".\"

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

> Valfri sökmask för att välja de filer som behöver kopieras.
            Standardvärde = '*'

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

> Synkroniserar innehållet i angivna kataloger, kommer även att ta bort alla filer och kataloger i målet som inte finns i källan

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

> Kommer att flytta istället för att kopiera alla filer från källa till mål

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

> Kommer även att kopiera ägarskap, säkerhetsbeskrivningar och granskningsinformation för filer och kataloger

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

> Kopierar endast filer från källan och hoppar över undermappar (ingen rekursion)

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

> Kopierar inte kataloger om de skulle vara tomma

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

> Skapa katalogträd endast

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

> Skapa katalogträd och filer med noll längd endast

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

> Kopiera inte symboliska länkar, kopplingar eller innehållet de pekar på

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

> Kopiera inte symboliska länkar till filer men följ katalogförgreningar.

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

> Kopiera symboliska länkar som de är istället för att kopiera innehållet de pekar på.

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

> Kopiera inte katalogförbindelser (symbolisk länk för en mapp) eller innehållet de pekar på

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

> Kopiera själva punkterna (junctions) istället för innehållet de pekar på.

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

> Kommer att kopiera alla filer även om de är äldre än de som finns i destinationen

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

> Kopierar endast filer som har arkivattributet inställt

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

> Förutom att kopiera endast filer som har arkivattributet inställt, kommer detta sedan att återställa attributet på källan

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

> Uteslut alla filer som matchar något av dessa namn/sökvägar/jokertecken

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

> Exkludera alla kataloger som matchar något av dessa namn/sökvägar/jokertecken

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

> Kopiera endast filer som har alla dessa attribut inställda [RASHCNETO]

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

> Uteslut filer som har något av dessa attribut inställt [RASHCNETO]

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

> Kommer att ställa in de angivna attributen på kopierade filer [RASHCNETO]

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

> Kommer att ta bort de angivna attributen från kopierade filer [RASHCNETO]

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

> Kopiera endast de översta n nivåerna av källkatalogträdet

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

> Hoppa över filer som är mindre än n byte stora

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

> Hoppa över filer som är större än n byte

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

> Hoppa över filer som inte är minst: n dagar gamla ELLER skapade före datum n (om n < 1900 så är n = n dagar, annars n = YYYYMMDD-datum)

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

> Hoppa över filer som är äldre än: n dagar ELLER skapade efter datum n (om n < 1900 så är n = n dagar, annars n = YYYYMMDD-datum)

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

> Hoppa över filer som har använts inom de senaste: n dagarna ELLER före datum n (om n < 1900 är n = n dagar, annars är n = datum ÅÅÅÅMMDD)

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

> Hoppa över filer som inte har öppnats på: n dagar ELLER efter n datum (om n < 1900 så är n = n dagar, annars är n = datum i formatet YYYYMMDD)

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

> Kommer tillfälligt att pausa och försöka igen när I/O-fel uppstår under kopiering

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

> Förblir aktiv efter kopiering och kopierar ytterligare ändringar efter en standardtröskel på 10 minuter.

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

> Kör igen om n minuter, om ändrad

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

> Kör igen när fler än n ändringar ses

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

> Körtider - tidpunkter då nya kopior får startas, starttid, intervall 0000:2359

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

> Körtider - tider då nya kopior kan startas, sluttid, intervall 0000:2359

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

> Om angivet kommer loggning även att göras till angiven fil

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

> Skriv inte över den angivna loggfilen, utan skriv över den istället.

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

> Inkludera alla skannade katalognamn i utdata

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

> Inkludera alla skannade filnamn i utdata, även de som hoppades över

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

> Utdata status som UNICODE

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

> Aktiverar optimering för kopiering av stora filer

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

> Optimera prestanda genom att göra flertrådad kopiering

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

> Använd komprimering om möjligt när du kopierar filer mellan servrar för att spara bandbredd och tid.

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

> När den är inställd kommer den att använda millisekundstidsstämpel-matchning istället för standardtoleransen på 2 sekunder.

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

> Åsidosätter, tar bort eller lägger till en angiven robocopy-parameter.

Användning:

Lägg till eller ersätt parameter:

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

Ta bort parameter:

    -Override -/Switch

Flera åsidosättanden:

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
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-LocationParent5.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Write-TextFileAtomic.md)
