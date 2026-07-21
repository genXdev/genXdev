# Start-RoboCopy

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `xc`, `rc`

## Synopsis

> Stellt einen PowerShell-Wrapper für das Microsoft Robust Copy (RoboCopy)-Dienstprogramm bereit.

## Description

Ein umfassender Wrapper für das RoboCopy-Befehlszeilenprogramm, das robuste Datei- und Verzeichniskopierfunktionen bietet. Diese Funktion macht RoboCops umfangreiche Funktionen über PowerShell-freundliche Parameter zugänglich, während der Großteil seiner leistungsstarken Funktionalität erhalten bleibt.

Hauptmerkmale:
- Verzeichnissynchronisation mit Spiegelungsoptionen
- Unterstützung für extrem lange Pfadnamen (>256 Zeichen)
- Beibehaltung von Sicherheitseinstellungen
- Erweiterte Dateiattributverwaltung
- Verwaltung von symbolischen Verknüpfungen und Junction Points
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
| `-Source` | String | ✅ | — | 0 | — | Das Verzeichnis, der Dateipfad oder das Verzeichnis+Suchmaske |
| `-DestinationDirectory` | String | — | — | 1 | `".$([System.IO.Path]::DirectorySeparatorChar)"` | Das Zielverzeichnis, in das die kopierten Dateien und Verzeichnisse abgelegt werden sollen.
            Falls dieses Verzeichnis noch nicht existiert, werden alle fehlenden Verzeichnisse erstellt.
            Standardwert = ".\" |
| `-Files` | String[] | — | — | 2 | `@()` | Optionale Suchmaske zur Auswahl der zu kopierenden Dateien.
            Standardwert = '*' 🌐 *Supports wildcards* |
| `-Mirror` | SwitchParameter | — | — | Named | — | Synchronisiert den Inhalt angegebener Verzeichnisse und löscht auch alle Dateien und Verzeichnisse im Ziel, die im Quellverzeichnis nicht vorhanden sind |
| `-Move` | SwitchParameter | — | — | Named | — | Verschiebt statt zu kopieren alle Dateien von Quelle nach Ziel |
| `-IncludeSecurity` | SwitchParameter | — | — | Named | — | Kopiert ebenfalls Besitzerinformationen, Sicherheitsbeschreibungen und Überwachungsinformationen von Dateien und Verzeichnissen |
| `-SkipDirectories` | SwitchParameter | — | — | Named | — | Kopiert nur Dateien aus der Quelle und überspringt Unterverzeichnisse (keine Rekursion) *(Parameter set: )* |
| `-SkipEmptyDirectories` | SwitchParameter | — | — | Named | — | Kopiert keine Verzeichnisse, wenn sie leer wären *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructure` | SwitchParameter | — | — | Named | — | Nur Verzeichnisbaum erstellen *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructureAndEmptyFiles` | SwitchParameter | — | — | Named | — | Nur Verzeichnisstruktur und Dateien mit Länge Null erstellen |
| `-SkipAllSymbolicLinks` | SwitchParameter | — | — | Named | — | Symbolische Verknüpfungen, Verzeichnisverbindungen oder die Inhalte, auf die sie verweisen, nicht kopieren |
| `-SkipSymbolicFileLinks` | SwitchParameter | — | — | Named | — | Kopieren Sie keine Datei-Symbolverknüpfungen, folgen Sie jedoch Verzeichnis-Junctions. |
| `-CopySymbolicLinksAsLinks` | SwitchParameter | — | — | Named | — | Kopieren Sie die Verknüpfungen selbst, anstatt den Inhalt zu kopieren, auf den die symbolischen Verknüpfungen verweisen. |
| `-SkipJunctions` | SwitchParameter | — | — | Named | — | Kopieren Sie keine Verzeichnisverknüpfungen (symlink für einen Ordner) oder den Inhalt, auf den sie verweisen. *(Parameter set: )* |
| `-CopyJunctionsAsJunctons` | SwitchParameter | — | — | Named | — | Kopieren Sie anstelle des Inhalts, auf den die Verknüpfungen zeigen, die Verknüpfungen selbst. *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Alle Dateien werden kopiert, auch wenn sie älter sind als diejenigen im Ziel. |
| `-SkipFilesWithoutArchiveAttribute` | SwitchParameter | — | — | Named | — | Kopiert nur Dateien, die das Archivattribut gesetzt haben. |
| `-ResetArchiveAttributeAfterSelection` | SwitchParameter | — | — | Named | — | Zusätzlich zum Kopieren von Dateien, die nur das Archivattribut gesetzt haben, wird dieses Attribut dann auf der Quelle zurückgesetzt. |
| `-FileExcludeFilter` | String[] | — | — | Named | `@()` | Schließt alle Dateien aus, die mit einem dieser Namen/Pfade/Platzhalter übereinstimmen 🌐 *Supports wildcards* |
| `-DirectoryExcludeFilter` | String[] | — | — | Named | `@()` | Alle Verzeichnisse ausschließen, die mit einem dieser Namen/Pfade/Platzhalter übereinstimmen *(Parameter set: )* 🌐 *Supports wildcards* |
| `-AttributeIncludeFilter` | String | — | — | Named | — | Kopieren Sie nur Dateien, die alle diese Attribute festgelegt haben [RASHCNETO] |
| `-AttributeExcludeFilter` | String | — | — | Named | — | Schließen Sie Dateien aus, die eines dieser Attribute gesetzt haben [RASHCNETO] |
| `-SetAttributesAfterCopy` | String | — | — | Named | — | Wird die angegebenen Attribute auf kopierte Dateien anwenden [RASHCNETO] |
| `-RemoveAttributesAfterCopy` | String | — | — | Named | — | Entfernt die angegebenen Attribute aus kopierten Dateien [RASHCNETO] |
| `-MaxSubDirTreeLevelDepth` | Int32 | — | — | Named | `-1` | Kopieren Sie nur die oberen n Ebenen des Quellverzeichnisbaums *(Parameter set: )* |
| `-MinFileSize` | Int32 | — | — | Named | `-1` | Überspringen von Dateien, die weniger als n Bytes groß sind |
| `-MaxFileSize` | Int32 | — | — | Named | `-1` | Dateien überspringen, die größer als n Bytes sind |
| `-MinFileAge` | Int32 | — | — | Named | `-1` | Überspringe Dateien, die nicht mindestens: n Tage alt sind oder vor dem Datum n erstellt wurden (wenn n < 1900, dann n = n Tage, sonst n = YYYYMMDD-Datum) |
| `-MaxFileAge` | Int32 | — | — | Named | `-1` | Überspringe Dateien, die älter sind als: n Tage oder erstellt nach n Datum (wenn n < 1900, dann n = n Tage, sonst n = YYYYMMDD Datum) |
| `-MinLastAccessAge` | Int32 | — | — | Named | `-1` | Überspringe Dateien, auf die in den letzten: n Tagen zugegriffen wurde ODER vor n Datum (wenn n < 1900 dann n = n Tage, sonst n = YYYYMMDD Datum) |
| `-MaxLastAccessAge` | Int32 | — | — | Named | `-1` | Überspringe Dateien, auf die nicht zugegriffen wurde in: n Tagen ODER nach n Datum (wenn n < 1900 dann n = n Tage, sonst n = JJJJMMTT Datum) |
| `-RecoveryMode` | SwitchParameter | — | — | Named | — | Wird kurz pausieren und erneut versuchen, wenn während des Kopierens E/A-Fehler auftreten |
| `-MonitorMode` | SwitchParameter | — | — | Named | — | Bleibt nach dem Kopieren aktiv und kopiert zusätzliche Änderungen nach einem Standard-Schwellenwert von 10 Minuten. |
| `-MonitorModeThresholdMinutes` | Int32 | — | — | Named | `-1` | In n Minuten erneut ausführen, falls geändert |
| `-MonitorModeThresholdNrOfChanges` | Int32 | — | — | Named | `-1` | Erneut ausführen, wenn mehr als n Änderungen erkannt wurden |
| `-MonitorModeRunHoursFrom` | Int32 | — | — | Named | `-1` | Ausführungsstunden – Zeiten, zu denen neue Kopien gestartet werden können, Startzeit, Bereich 0000:2359 |
| `-MonitorModeRunHoursUntil` | Int32 | — | — | Named | `-1` | Ausführungszeiten - Uhrzeiten, zu denen neue Kopien gestartet werden können, Endzeit, Bereich 0000:2359 |
| `-LogFilePath` | String | — | — | Named | — | Falls angegeben, wird die Protokollierung auch in die angegebene Datei durchgeführt |
| `-LogfileOverwrite` | SwitchParameter | — | — | Named | — | Nicht an die angegebene Protokolldatei anhängen, sondern stattdessen überschreiben |
| `-LogDirectoryNames` | SwitchParameter | — | — | Named | — | Alle gescannten Verzeichnisnamen in die Ausgabe einschließen |
| `-LogAllFileNames` | SwitchParameter | — | — | Named | — | Alle gescannten Dateinamen in die Ausgabe einschließen, sogar die übersprungenen |
| `-Unicode` | SwitchParameter | — | — | Named | — | Status als UNICODE ausgeben |
| `-LargeFiles` | SwitchParameter | — | — | Named | — | Aktiviert die Optimierung für das Kopieren großer Dateien |
| `-MultiThreaded` | SwitchParameter | — | — | Named | — | Optimieren Sie die Leistung durch mehrthreadiges Kopieren |
| `-CompressibleContent` | SwitchParameter | — | — | Named | — | Verwenden Sie nach Möglichkeit Komprimierung beim Kopieren von Dateien zwischen Servern, um Bandbreite und Zeit zu sparen. |
| `-ExactTimestamps` | SwitchParameter | — | — | Named | — | Wenn gesetzt, wird die Übereinstimmung mit Millisekunden-Zeitstempeln anstelle der standardmäßigen 2-Sekunden-Toleranz verwendet. |
| `-Override` | String | — | — 🌐 Remaining | 3 | — | Überschreibt, entfernt oder fügt einen beliebigen robocopy-Parameter hinzu.

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

## Parameter Details

### `-Source <String>`

> Das Verzeichnis, der Dateipfad oder das Verzeichnis+Suchmaske

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

> Das Zielverzeichnis, in das die kopierten Dateien und Verzeichnisse abgelegt werden sollen.
            Falls dieses Verzeichnis noch nicht existiert, werden alle fehlenden Verzeichnisse erstellt.
            Standardwert = ".\"

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

> Optionale Suchmaske zur Auswahl der zu kopierenden Dateien.
            Standardwert = '*'

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

> Synchronisiert den Inhalt angegebener Verzeichnisse und löscht auch alle Dateien und Verzeichnisse im Ziel, die im Quellverzeichnis nicht vorhanden sind

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

> Verschiebt statt zu kopieren alle Dateien von Quelle nach Ziel

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

> Kopiert ebenfalls Besitzerinformationen, Sicherheitsbeschreibungen und Überwachungsinformationen von Dateien und Verzeichnissen

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

> Kopiert nur Dateien aus der Quelle und überspringt Unterverzeichnisse (keine Rekursion)

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

> Kopiert keine Verzeichnisse, wenn sie leer wären

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

> Nur Verzeichnisbaum erstellen

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

> Nur Verzeichnisstruktur und Dateien mit Länge Null erstellen

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

> Symbolische Verknüpfungen, Verzeichnisverbindungen oder die Inhalte, auf die sie verweisen, nicht kopieren

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

> Kopieren Sie keine Datei-Symbolverknüpfungen, folgen Sie jedoch Verzeichnis-Junctions.

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

> Kopieren Sie die Verknüpfungen selbst, anstatt den Inhalt zu kopieren, auf den die symbolischen Verknüpfungen verweisen.

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

> Kopieren Sie keine Verzeichnisverknüpfungen (symlink für einen Ordner) oder den Inhalt, auf den sie verweisen.

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

> Kopieren Sie anstelle des Inhalts, auf den die Verknüpfungen zeigen, die Verknüpfungen selbst.

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

> Alle Dateien werden kopiert, auch wenn sie älter sind als diejenigen im Ziel.

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

> Kopiert nur Dateien, die das Archivattribut gesetzt haben.

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

> Zusätzlich zum Kopieren von Dateien, die nur das Archivattribut gesetzt haben, wird dieses Attribut dann auf der Quelle zurückgesetzt.

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

> Schließt alle Dateien aus, die mit einem dieser Namen/Pfade/Platzhalter übereinstimmen

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

> Alle Verzeichnisse ausschließen, die mit einem dieser Namen/Pfade/Platzhalter übereinstimmen

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

> Kopieren Sie nur Dateien, die alle diese Attribute festgelegt haben [RASHCNETO]

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

> Schließen Sie Dateien aus, die eines dieser Attribute gesetzt haben [RASHCNETO]

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

> Wird die angegebenen Attribute auf kopierte Dateien anwenden [RASHCNETO]

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

> Entfernt die angegebenen Attribute aus kopierten Dateien [RASHCNETO]

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

> Kopieren Sie nur die oberen n Ebenen des Quellverzeichnisbaums

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

> Überspringen von Dateien, die weniger als n Bytes groß sind

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

> Dateien überspringen, die größer als n Bytes sind

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

> Überspringe Dateien, die nicht mindestens: n Tage alt sind oder vor dem Datum n erstellt wurden (wenn n < 1900, dann n = n Tage, sonst n = YYYYMMDD-Datum)

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

> Überspringe Dateien, die älter sind als: n Tage oder erstellt nach n Datum (wenn n < 1900, dann n = n Tage, sonst n = YYYYMMDD Datum)

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

> Überspringe Dateien, auf die in den letzten: n Tagen zugegriffen wurde ODER vor n Datum (wenn n < 1900 dann n = n Tage, sonst n = YYYYMMDD Datum)

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

> Überspringe Dateien, auf die nicht zugegriffen wurde in: n Tagen ODER nach n Datum (wenn n < 1900 dann n = n Tage, sonst n = JJJJMMTT Datum)

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

> Wird kurz pausieren und erneut versuchen, wenn während des Kopierens E/A-Fehler auftreten

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

> Bleibt nach dem Kopieren aktiv und kopiert zusätzliche Änderungen nach einem Standard-Schwellenwert von 10 Minuten.

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

> In n Minuten erneut ausführen, falls geändert

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

> Erneut ausführen, wenn mehr als n Änderungen erkannt wurden

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

> Ausführungsstunden – Zeiten, zu denen neue Kopien gestartet werden können, Startzeit, Bereich 0000:2359

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

> Ausführungszeiten - Uhrzeiten, zu denen neue Kopien gestartet werden können, Endzeit, Bereich 0000:2359

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

> Falls angegeben, wird die Protokollierung auch in die angegebene Datei durchgeführt

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

> Nicht an die angegebene Protokolldatei anhängen, sondern stattdessen überschreiben

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

> Alle gescannten Verzeichnisnamen in die Ausgabe einschließen

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

> Alle gescannten Dateinamen in die Ausgabe einschließen, sogar die übersprungenen

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

> Status als UNICODE ausgeben

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

> Aktiviert die Optimierung für das Kopieren großer Dateien

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

> Optimieren Sie die Leistung durch mehrthreadiges Kopieren

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

> Verwenden Sie nach Möglichkeit Komprimierung beim Kopieren von Dateien zwischen Servern, um Bandbreite und Zeit zu sparen.

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

> Wenn gesetzt, wird die Übereinstimmung mit Millisekunden-Zeitstempeln anstelle der standardmäßigen 2-Sekunden-Toleranz verwendet.

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

> Überschreibt, entfernt oder fügt einen beliebigen robocopy-Parameter hinzu.

Verwendung:

Parameter hinzufügen oder ersetzen:

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

Parameter entfernen:

    -Override -/Switch

Mehrere Überschreibungen:

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

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/de-DE/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/de-DE/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/de-DE/Find-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/de-DE/Find-Item.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/de-DE/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/de-DE/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/de-DE/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/de-DE/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/de-DE/Rename-InProject.md)
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-LocationParent5.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/de-DE/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/de-DE/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/de-DE/Write-TextFileAtomic.md)
