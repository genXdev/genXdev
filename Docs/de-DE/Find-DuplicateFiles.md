# Find-DuplicateFiles

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `fdf

## Synopsis

> Find duplicate files across multiple directories based on configurable criteria.

## Description

Durchsucht rekursiv angegebene Verzeichnisse nach doppelten Dateien. Dateien gelten als Duplikate, wenn der Inhalt entweder exakt gleich ist oder mit demselben Inhalt beginnt (für den partiellen Vergleich mit dem -ComparePartial-Schalter). Das Cmdlet verwendet einen schnellen Hash der ersten Bytes der Datei für eine effiziente Gruppierung, bevor vollständige Inhaltsvergleiche durchgeführt werden. Die Größe dieses schnellen Hashs kann mit dem -CompareByteLength-Parameter konfiguriert werden, um eine Abwägung zwischen Leistung und Genauigkeit bei der Duplikaterkennung zu ermöglichen. Nur Dateien, die mindestens diese CompareByteLength-Länge haben, werden für die Duplikaterkennung berücksichtigt; kleinere Dateien werden nur nach Dateinamen gruppiert.

## Syntax

```powershell
Find-DuplicateFiles [[-Name] <String[]>] [[-RelativeBasePath] <String>] [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-CompareByteLength <Int32>] [-ComparePartial] [-Directory] [-DriveLetter <Char[]>] [-Exclude <String[]>] [-FilesAndDirectories] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-Input <Object>] [-LimitToRoot] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoLinks] [-NoRecurse] [-PassThru] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Find-DuplicateFiles [[-Content] <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>] [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 1 | `@('*')` | Dateiname oder Suchmuster. Standard ist '*' 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | Dateiname oder Suchmuster, das aus der Pipeline-Eingabe durchsucht werden soll. Standard ist '*' 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 2 | `@('.*')` | Regulärer Ausdruck zum Durchsuchen von Inhalten *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 3 | `'.\'` | Basispfad zum Auflösen relativer Pfade in der Ausgabe |
| `-Category` | String[] | — | — | Named | — | Only files belonging to selected categories are output. |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Maximaler Parallelitätsgrad für Verzeichnisaufgaben |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Optional: Abbruch-Time-Out in Sekunden |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Durchsuchen aller verfügbaren Laufwerke |
| `-Directory` | SwitchParameter | — | — | Named | — | Search for directories only |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | — | Sowohl Dateien als auch Verzeichnisse einschließen |
| `-PassThru` | SwitchParameter | — | — | Named | — | Entferne alle Leerzeichen aus dieser Zeichenkette |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Alternate-Datenströme in Suchergebnisse einbeziehen |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Nicht in Unterverzeichnisse absteigen |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Folgen Sie symbolischen Verknüpfungen und Verzeichnisverbindungen während der Verzeichnisdurchquerung |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | Optische Laufwerke einschließen |
| `-SearchDrives` | String[] | — | — | Named | `@()` | Optional: bestimmte Laufwerke durchsuchen |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | Optional: bestimmte Laufwerke durchsuchen |
| `-Root` | String[] | — | — | Named | `@()` | Optional: bestimmte Verzeichnisse durchsuchen |
| `-LimitToRoot` | SwitchParameter | — | — | Named | — | Erzwingt die Suche nur innerhalb von Root-Verzeichnissen, indem Verzeichniskomponenten aus Namenseingaben entfernt werden |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | Include non-text files when searching file contents |
| `-NoLinks` | SwitchParameter | — | — | Named | — | Erzwingt den unbeaufsichtigten Modus und generiert keine Links |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `[System.IO.MatchCasing]::PlatformDefault` | Legt die Groß-/Kleinschreibung für Dateien und Verzeichnisse fest oder ruft sie ab. |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | Wenn aktiviert, wird eine Inhaltssuche in alternativen Datenströmen (ADS) durchgeführt |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Maximale Rekursionstiefe für die Verzeichnisdurchquerung. 0 bedeutet unbegrenzt. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Maximale Rekursionstiefe für die Suche nach Fortsetzungen im Baum aufwärts. 0 bedeutet deaktiviert. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Maximale Dateigröße in Bytes, die in die Ergebnisse einbezogen werden soll. 0 bedeutet unbegrenzt. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Mindestdateigröße in Bytes, die in die Ergebnisse aufgenommen werden soll. 0 bedeutet kein Minimum. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Nur Dateien einbeziehen, die nach diesem Datum/dieser Uhrzeit (UTC) geändert wurden |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Nur Dateien einschließen, die vor diesem Datum/dieser Uhrzeit (UTC) geändert wurden |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | Dateiattribute zum Überspringen (z. B. System, Versteckt oder Keine) |
| `-Exclude` | String[] | — | — | Named | `@('*\.git\*')` | Dateien oder Verzeichnisse ausschließen, die diesen Wildcard-Mustern entsprechen |
| `-AllMatches` | SwitchParameter | — | — | Named | — | Suche nach mehr als einer Übereinstimmung in jeder Textzeile *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Groß-/Kleinschreibung wird beachtet *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | Erfasst Kontextzeilen um Treffer *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Kulturname, der für den Musterabgleich verwendet wird *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `'UTF8NoBOM'` | Legt Kodierung für Zieldateien fest *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | — | Pro Datei wird nur der erste Treffer zurückgegeben. *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | — | Deaktiviert die Hervorhebung übereinstimmender Zeichenfolgen in der Ausgabe *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | Der Parameter NotMatch findet Text, der nicht mit dem Muster übereinstimmt *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | — | Output only matching strings instead of MatchInfo objects *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | Use simple string matching instead of regex *(Parameter set: )* |
| `-ComparePartial` | SwitchParameter | — | — | Named | — | Es werden Dateien mit unterschiedlichen Größen zurückgegeben, solange sie mit demselben Dateinamen und Inhalt beginnen. Dies erkennt unterbrochene Download-/Kopiervorgänge. |
| `-CompareByteLength` | Int32 | — | — | Named | `65536` | Quick compare byte length of files, used for fast indexing and searching of duplicates, this will not compare content of files |

## Examples

### Find duplicate text files in the Documents folder based on exact content: Find-DuplicateFiles ~\Documents\*.doc* -ComparePartial

```powershell
Find duplicate text files in the Documents folder based on exact content:
Find-DuplicateFiles ~\Documents\*.doc* -ComparePartial
```

### Removes all duplicate media files in the Pictures and Videos folders, keeping only one copy of each duplicate set: (Find-DuplicateFiles ~\Pictures\*, ~\Videos\* -Category Pictures, Videos -ComparePartial).Duplicates.FullName | Remove-Item -Force -Verbose

```powershell
Removes all duplicate media files in the Pictures and Videos folders, keeping only one copy of each duplicate set:
(Find-DuplicateFiles ~\Pictures\*, ~\Videos\* -Category Pictures, Videos -ComparePartial).Duplicates.FullName | Remove-Item -Force -Verbose
```

## Related Links

- [Find-DuplicateFiles on GitHub](https://github.com/genXdev/genXdev)
