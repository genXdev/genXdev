# Start-RoboCopy

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `xc, `rc

## Synopsis

> Stellt einen PowerShell-Wrapper für das Robust Copy (RoboCopy)-Dienstprogramm von Microsoft bereit.

## Description

Ein umfassender Wrapper für das RoboCopy-Befehlszeilentool, das robuste Datei- und Verzeichniskopierfunktionen bietet. Diese Funktion macht RoboCoppys umfangreiche Funktionspalette über PowerShell-freundliche Parameter zugänglich, während der Großteil seiner leistungsstarken Funktionalität erhalten bleibt.

Hauptfunktionen:
- Verzeichnissynchronisation mit Spiegeloptionen
- Unterstützung für extrem lange Pfadnamen (>256 Zeichen)
- Beibehaltung von Sicherheitseinstellungen
- Erweiterte Dateiattributverwaltung
- Verwaltung von symbolischen Links und Junction Points
- Überwachungsmodus für kontinuierliche Synchronisation
- Leistungsoptimierung für große Dateien
- Unterstützung für Netzwerkkomprimierung
- Wiederherstellungsmodus für fehlerhafte Geräte

## Syntax

```powershell
Start-RoboCopy -Source <String> [[-DestinationDirectory] <String>] [[-Files] <String[]>] [[-Override] <String>] [-AttributeExcludeFilter <String>] [-AttributeIncludeFilter <String>] [-CompressibleContent] [-CopyOnlyDirectoryTreeStructureAndEmptyFiles] [-CopySymbolicLinksAsLinks] [-ExactTimestamps] [-FileExcludeFilter <String[]>] [-Force] [-IncludeSecurity] [-LargeFiles] [-LogAllFileNames] [-LogDirectoryNames] [-LogfileOverwrite] [-LogFilePath <String>] [-MaxFileAge <Int32>] [-MaxFileSize <Int32>] [-MaxLastAccessAge <Int32>] [-MinFileAge <Int32>] [-MinFileSize <Int32>] [-MinLastAccessAge <Int32>] [-Mirror] [-MonitorMode] [-MonitorModeRunHoursFrom <Int32>] [-MonitorModeRunHoursUntil <Int32>] [-MonitorModeThresholdMinutes <Int32>] [-MonitorModeThresholdNrOfChanges <Int32>] [-Move] [-MultiThreaded] [-RecoveryMode] [-RemoveAttributesAfterCopy <String>] [-ResetArchiveAttributeAfterSelection] [-SetAttributesAfterCopy <String>] [-SkipAllSymbolicLinks] [-SkipFilesWithoutArchiveAttribute] [-SkipSymbolicFileLinks] [-Unicode] [<CommonParameters>]

Start-RoboCopy [-SkipDirectories] [<CommonParameters>]

Start-RoboCopy [-CopyJunctionsAsJunctons] [-CopyOnlyDirectoryTreeStructure] [-DirectoryExcludeFilter <String[]>] [-MaxSubDirTreeLevelDepth <Int32>] [-SkipEmptyDirectories] [-SkipJunctions] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Source` | String | ✅ | — | 0 | — | Der Ordner, der Dateipfad oder der Ordner+Suchmaske |
| `-DestinationDirectory` | String | — | — | 1 | `".$([System.IO.Path]::DirectorySeparatorChar)"` | Das Zielverzeichnis, in das die kopierten Dateien und Verzeichnisse abgelegt werden sollen. Falls dieses Verzeichnis noch nicht existiert, werden alle fehlenden Verzeichnisse erstellt. Standardwert = "." |
| `-Files` | String[] | — | — | 2 | `@()` | Optionale Suchmaske für die Auswahl der zu kopierenden Dateien.
            Standardwert = '*' 🌐 *Supports wildcards* |
| `-Mirror` | SwitchParameter | — | — | Named | — | Synchronisiert den Inhalt angegebener Verzeichnisse, löscht dabei auch alle Dateien und Verzeichnisse im Ziel, die nicht im Quellverzeichnis vorhanden sind |
| `-Move` | SwitchParameter | — | — | Named | — | Verschiebt anstatt Dateien vom Quell- zum Zielort zu kopieren |
| `-IncludeSecurity` | SwitchParameter | — | — | Named | — | Übernimmt auch Besitzerinformationen, Sicherheitsbeschreibungen und Überwachungsinformationen von Dateien und Verzeichnissen |
| `-SkipDirectories` | SwitchParameter | — | — | Named | — | Kopiert nur Dateien aus der Quelle und überspringt Unterverzeichnisse (keine Rekursion) *(Parameter set: )* |
| `-SkipEmptyDirectories` | SwitchParameter | — | — | Named | — | Does not copy directories if they would be empty *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructure` | SwitchParameter | — | — | Named | — | . *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructureAndEmptyFiles` | SwitchParameter | — | — | Named | — | project/
├── src/
│   ├── main.cpp
│   └── utils.cpp
├── include/
│   └── utils.h
├── docs/
│   ├── README.md
│   └── manual.txt
└── Makefile |
| `-SkipAllSymbolicLinks` | SwitchParameter | — | — | Named | — | Kopieren Sie keine symbolischen Links, Verknüpfungen oder den Inhalt, auf den sie verweisen |
| `-SkipSymbolicFileLinks` | SwitchParameter | — | — | Named | — | Don't copy file symbolic links but do follow directory junctions |
| `-CopySymbolicLinksAsLinks` | SwitchParameter | — | — | Named | — | Instead of copying the content where symbolic links point to, copy the links themselves |
| `-SkipJunctions` | SwitchParameter | — | — | Named | — | Kopieren Sie keine Verzeichnisverknüpfungen (symbolische Links für Ordner) oder die Inhalte, auf die sie verweisen *(Parameter set: )* |
| `-CopyJunctionsAsJunctons` | SwitchParameter | — | — | Named | — | Instead of copying the content where junctions point to, copy the junctions themselves *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Kopiert alle Dateien, selbst wenn sie älter sind als die im Ziel. |
| `-SkipFilesWithoutArchiveAttribute` | SwitchParameter | — | — | Named | — | Kopiert nur Dateien, die das Archivattribut gesetzt haben |
| `-ResetArchiveAttributeAfterSelection` | SwitchParameter | — | — | Named | — | Zusätzlich zum Kopieren nur der Dateien, die das Archivattribut gesetzt haben, wird dieses Attribut auf der Quelle zurückgesetzt. |
| `-FileExcludeFilter` | String[] | — | — | Named | `@()` | Exclude any files that matches any of these names/paths/wildcards 🌐 *Supports wildcards* |
| `-DirectoryExcludeFilter` | String[] | — | — | Named | `@()` | Schließe alle Verzeichnisse aus, die mit einem dieser Namen/Pfade/Platzhalter übereinstimmen *(Parameter set: )* 🌐 *Supports wildcards* |
| `-AttributeIncludeFilter` | String | — | — | Named | — | Kopiere nur Dateien, die alle diese Attribute gesetzt haben [RASHCNETO] |
| `-AttributeExcludeFilter` | String | — | — | Named | — | Dateien ausschließen, die eines dieser Attribute gesetzt haben [RASHCNETO] |
| `-SetAttributesAfterCopy` | String | — | — | Named | — | Legt die angegebenen Attribute für kopierte Dateien fest [RASHCNETO] |
| `-RemoveAttributesAfterCopy` | String | — | — | Named | — | Entfernt die angegebenen Attribute von kopierten Dateien [RASHCNETO] |
| `-MaxSubDirTreeLevelDepth` | Int32 | — | — | Named | `-1` | Nur die obersten n Ebenen des Quellverzeichnisbaums kopieren *(Parameter set: )* |
| `-MinFileSize` | Int32 | — | — | Named | `-1` | Überspringe Dateien, die nicht mindestens n Bytes groß sind |
| `-MaxFileSize` | Int32 | — | — | Named | `-1` | Überspringe Dateien, die größer als n Bytes sind |
| `-MinFileAge` | Int32 | — | — | Named | `-1` | Skip files that are not at least: n days old OR created before n date (if n < 1900 then n = n days, else n = YYYYMMDD date) |
| `-MaxFileAge` | Int32 | — | — | Named | `-1` | Überspringe Dateien, die älter als n Tage sind oder nach dem Datum n erstellt wurden (wenn n < 1900, dann n = n Tage, sonst n = JJJJMMTT-Datum) |
| `-MinLastAccessAge` | Int32 | — | — | Named | `-1` | Dateien überspringen, auf die in den letzten: n Tagen zugegriffen wurde ODER vor dem n Datum (wenn n < 1900, dann n = n Tage, sonst n = JJJJMMTT Datum) |
| `-MaxLastAccessAge` | Int32 | — | — | Named | `-1` | Überspringe Dateien, auf die nicht zugegriffen wurde in: n Tagen ODER nach n Datum (wenn n < 1900 dann n = n Tage, sonst n = JJJJMMTT Datum) |
| `-RecoveryMode` | SwitchParameter | — | — | Named | — | Will kurz pausieren und erneut versuchen, wenn während des Kopierens E/A-Fehler auftreten |
| `-MonitorMode` | SwitchParameter | — | — | Named | — | After copying, stays active and copies additional changes after a default threshold of 10 minutes |
| `-MonitorModeThresholdMinutes` | Int32 | — | — | Named | `-1` | Run again in n minutes Time, if changed |
| `-MonitorModeThresholdNrOfChanges` | Int32 | — | — | Named | `-1` | Erneut ausführen, wenn mehr als n Änderungen gesehen werden |
| `-MonitorModeRunHoursFrom` | Int32 | — | — | Named | `-1` | Betriebsstunden - Zeiten, zu denen neue Kopien gestartet werden können, Startzeit, Bereich 0000:2359 |
| `-MonitorModeRunHoursUntil` | Int32 | — | — | Named | `-1` | Laufzeiten - Zeiten, in denen neue Kopien gestartet werden können, Endzeit, Bereich 0000:2359 |
| `-LogFilePath` | String | — | — | Named | — | Falls angegeben, wird die Protokollierung auch in der angegebenen Datei durchgeführt |
| `-LogfileOverwrite` | SwitchParameter | — | — | Named | — | Nicht an die angegebene Logdatei anhängen, sondern stattdessen überschreiben |
| `-LogDirectoryNames` | SwitchParameter | — | — | Named | — | Scanned directories: foo, bar, baz |
| `-LogAllFileNames` | SwitchParameter | — | — | Named | — | Include all scanned file names in output, even skipped onces |
| `-Unicode` | SwitchParameter | — | — | Named | — | Status als UNICODE |
| `-LargeFiles` | SwitchParameter | — | — | Named | — | Aktiviert Optimierung zum Kopieren großer Dateien |
| `-MultiThreaded` | SwitchParameter | — | — | Named | — | Optimieren Sie die Leistung durch mehrthreadfähiges Kopieren |
| `-CompressibleContent` | SwitchParameter | — | — | Named | — | Falls möglich, verwenden Sie Komprimierung beim Kopieren von Dateien zwischen Servern, um Bandbreite und Zeit zu sparen. |
| `-ExactTimestamps` | SwitchParameter | — | — | Named | — | Wenn gesetzt, wird anstelle der standardmäßigen 2-Sekunden-Toleranz ein Millisekunden-Zeitstempelabgleich verwendet |
| `-Override` | String | — | — 🌐 Remaining | 3 | — | Überschreibt, entfernt oder fügt einen angegebenen robocopy-Parameter hinzu.

Verwendung:

Parameter hinzufügen oder ersetzen:

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

Parameter entfernen:

    -Override -/Switch

Mehrere Überschreibungen:

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

## Related Links

- [Start-RoboCopy on GitHub](https://github.com/genXdev/genXdev)
