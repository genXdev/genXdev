# Set-FoundLocation

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `lcd

## Synopsis

> Findet die erste übereinstimmende Datei oder den ersten übereinstimmenden Ordner und setzt den Speicherort darauf.

## Description

Dieses Cmdlet hilft Ihnen, schnell Verzeichnisse zu wechseln, indem es Suchbegriffe verwendet, die den ersten übereinstimmenden Ordner oder (optional) die erste übereinstimmende Datei finden und das Verzeichnis dorthin wechseln. Unterstützt erweiterte Filterung nach Inhalt, Dateiattributen, Größe, Änderungsdaten und vielen anderen Kriterien.

## Syntax

```powershell
Set-FoundLocation -Name <String> [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-DirectoriesAndFiles] [-DriveLetter <Char[]>] [-ExactMatch] [-Exclude <String[]>] [-File] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoRecurse] [-Push] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Set-FoundLocation -InputObject <Object> [<CommonParameters>]

Set-FoundLocation [[-Content] <String[]>] [-CaseSensitive] [-Culture <String>] [-Encoding <String>] [-NotMatch] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | Dateiname oder Suchmuster. 🌐 *Supports wildcards* |
| `-InputObject` | Object | ✅ | ✅ (ByValue, ByPropertyName) | Named | — | Dateiname oder Suchmuster, das aus der Pipeline-Eingabe durchsucht werden soll. Standard ist '*' *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | `@(".*")` | Regex-Muster zum Durchsuchen von Dateiinhalten *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Category` | String[] | — | — | Named | — | Only files belonging to selected categories are output. |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Maximaler Parallelitätsgrad für Verzeichnisaufgaben |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Optional: Abbruch-Time-Out in Sekunden |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Durchsuchen aller verfügbaren Laufwerke |
| `-File` | SwitchParameter | — | — | Named | — | Search for filenames only and change to folder of first found file |
| `-DirectoriesAndFiles` | SwitchParameter | — | — | Named | — | Include filename matching and change to folder of first found file |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Alternate-Datenströme in Suchergebnisse einbeziehen |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Nicht in Unterverzeichnisse absteigen |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Folgen Sie symbolischen Verknüpfungen und Verzeichnisverbindungen während der Verzeichnisdurchquerung |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | Optische Laufwerke einschließen |
| `-SearchDrives` | String[] | — | — | Named | `@()` | Optional: bestimmte Laufwerke durchsuchen |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | Optional: bestimmte Laufwerke durchsuchen |
| `-Root` | String[] | — | — | Named | `@()` | Optional: search specific base folders combined with provided Names |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | Beziehen Sie nicht-Textdateien (Binärdateien, Bilder usw.) bei der Suche in Dateiinhalten ein. |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `(
            [System.IO.MatchCasing]::PlatformDefault)` | Legt die Groß-/Kleinschreibung für Dateien und Verzeichnisse fest oder ruft sie ab. |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | Wenn gesetzt, führt eine Inhaltsuche in alternativen Datenströmen (ADS) durch. Wenn nicht gesetzt, gibt ADS-Dateiinformationen aus, ohne deren Inhalt zu durchsuchen. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Maximale Rekursionstiefe für die Verzeichnisdurchquerung. 0 bedeutet unbegrenzt. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Maximale Dateigröße in Bytes, die in die Ergebnisse einbezogen werden soll. 0 bedeutet unbegrenzt. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Mindestdateigröße in Bytes, die in die Ergebnisse aufgenommen werden soll. 0 bedeutet kein Minimum. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Nur Dateien einschließen, die nach diesem Datum/Uhrzeit (UTC) geändert wurden. |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Nur Dateien einbeziehen, die vor diesem Datum/Zeitpunkt (UTC) geändert wurden. |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `(
            [System.IO.FileAttributes]::System)` | Zu überspringende Dateiattribute (z. B. System, Versteckt oder Keine). |
| `-Exclude` | String[] | — | — | Named | `@("*\\.git\\*")` | Schließen Sie Dateien oder Verzeichnisse aus, die diesen Platzhaltermustern entsprechen (z.B. *.tmp, *\bin\*). |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Gibt an, dass die Übereinstimmungen des Cmdlets case-sensitive sind. Standardmäßig sind Übereinstimmungen nicht case-sensitive. *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Gibt einen Kulturnamen an, der dem angegebenen Muster entspricht. Der Parameter Culture muss mit dem Parameter SimpleMatch verwendet werden. Das Standardverhalten verwendet die Kultur des aktuellen PowerShell-Runspaces (Sitzung). *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `"UTF8NoBOM"` | Gibt den Kodierungstyp für die Zieldatei an. Der Standardwert ist utf8NoBOM. *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | Der Parameter „NotMatch“ sucht nach Text, der nicht dem angegebenen Muster entspricht. *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | Gibt an, dass das Cmdlet einen einfachen Vergleich anstelle eines regulären Ausdrucks verwendet. Bei einem einfachen Vergleich durchsucht Select-String die Eingabe nach dem Text im Parameter Pattern. Es interpretiert den Wert des Parameters Pattern nicht als regulären Ausdruck. *(Parameter set: )* |
| `-Push` | SwitchParameter | — | — | Named | — | Use Push-Location instead of Set-Location and push the location onto the location stack |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | Wenn gesetzt, werden nur exakte Namensübereinstimmungen berücksichtigt. Standardmäßig wird die Platzhalter-Suche verwendet, es sei denn, der Name enthält Platzhalterzeichen. |

## Examples

### Set-FoundLocation *.Console

```powershell
Set-FoundLocation *.Console
```

Änderungen am ersten Verzeichnis, das dem Muster '*.Console' entspricht.

### lcd *.Console

```powershell
lcd *.Console
```

Änderungen am ersten Verzeichnis, das dem Muster '*.Console' entspricht, unter Verwendung des Alias.

### Set-FoundLocation -Name "*.ps1" -Content "function"

```powershell
Set-FoundLocation -Name "*.ps1" -Content "function"
```

Wechseln in das Verzeichnis, das die erste PowerShell-Datei enthält, die das Wort 'function' enthält.

### Set-FoundLocation *test* -File

```powershell
Set-FoundLocation *test* -File
```

Changes to the directory containing the first file with 'test' in its name.

### Set-FoundLocation * '1\.\d+\.2025'

```powershell
Set-FoundLocation * '1\.\d+\.2025'
```

Änderungen am Verzeichnis, das die erste Datei enthält, deren Inhalt mit dem Muster '1.\d+\.2025' übereinstimmt.

## Related Links

- [Set-FoundLocation on GitHub](https://github.com/genXdev/genXdev)
