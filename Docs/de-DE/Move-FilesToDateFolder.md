# Move-FilesToDateFolder

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> Verschiebt Dateien, die den Suchkriterien entsprechen, in datumsbasierte Unterordner.

## Description

Sucht nach Dateien mit demselben Parametersatz wie `Find-Item` und verschiebt jede gefundene Datei basierend auf dem Erstellungs- oder Mediendatum in einen Unterordner von `TargetFolder`. Das Cmdlet unterstützt Inhaltsabgleich, laufwerksweite Suchen und viele Filter. Es kann optional leere Quellordner nach dem Verschieben löschen.

Versucht mehrere Strategien, um ein genaues Erstellungs- oder Aufnahmedatum für die angegebene Datei zu ermitteln. Strategien umfassen das Lesen von Bild-EXIF-Metadaten, das Analysieren von Datums-/Zeitinformationen aus Dateinamen und das Zurückgreifen auf die letzte Schreibzeit der Datei, wenn keine anderen zuverlässigen Informationen verfügbar sind.

## Syntax

```powershell
Move-FilesToDateFolder -TargetFolder <String> [[-Name] <String[]>] [[-RelativeBasePath] <String>] [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-DeleteEmptyDirs] [-Directory] [-DriveLetter <Char[]>] [-Exclude <String[]>] [-FilesAndDirectories] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-Input <Object>] [-LimitToRoot] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoLinks] [-NoRecurse] [-PassThru] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TargetFolderNameDateSyntax <String>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Move-FilesToDateFolder [[-Content] <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>] [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-TargetFolder` | String | ✅ | — | 0 | — | Zielstammordner, in den übereinstimmende Dateien in datumsbasierte Unterordner verschoben werden |
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
| `-DeleteEmptyDirs` | SwitchParameter | — | — | Named | — | Leere Quellverzeichnisse nach dem Verschieben von Dateien löschen |
| `-TargetFolderNameDateSyntax` | String | — | — | Named | `'Year + Month'` | Syntax für Datumsangaben im Zielordnernamen |

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

Move-FilesToDateFolder -TargetFolder 'D:\Archiv' -Name '*.jpg' -WhatIf

### Move all files across drives matching `*.mp4` into monthly folders and delete empty source folders:

```powershell
Move all files across drives matching `*.mp4` into monthly folders and delete
empty source folders:
```

Move-FilesToDateFolder -TargetFolder 'E:\Media\Videos' -Name '.*\.mp4' -DeleteEmptyDirs

## Related Links

- [Move-FilesToDateFolder on GitHub](https://github.com/genXdev/genXdev)
