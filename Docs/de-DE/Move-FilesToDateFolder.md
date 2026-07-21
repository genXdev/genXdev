# Move-FilesToDateFolder

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> Verschiebt Dateien, die den Suchkriterien entsprechen, in datumsbasierte Unterordner.

## Description

Sucht nach Dateien mit demselben Parametersatz wie `Find-Item` und verschiebt jede gefundene Datei basierend auf dem Erstellungs- oder Mediendatum in einen Unterordner von `TargetFolder`. Das Cmdlet unterstützt Inhaltsvergleich, laufwerksweite Suchvorgänge und viele Filter. Es kann optional leere Quellordner nach dem Verschieben löschen.

Es werden verschiedene Strategien angewendet, um ein genaues Erstellungs- oder Aufnahmedatum für die angegebene Datei zu ermitteln. Zu den Strategien gehören das Auslesen von Bild-EXIF-Metadaten, das Parsen von Datums-/Zeitinformationen aus Dateinamen und das Zurückgreifen auf die letzte Änderungszeit der Datei, wenn keine anderen zuverlässigen Informationen verfügbar sind.

## Syntax

```powershell
Move-FilesToDateFolder -TargetFolder <String> [[-Name] <String[]>] [[-RelativeBasePath] <String>] [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-DeleteEmptyDirs] [-Directory] [-DriveLetter <Char[]>] [-Exclude <String[]>] [-FilesAndDirectories] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-Input <Object>] [-LimitToRoot] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoLinks] [-NoRecurse] [-PassThru] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TargetFolderNameDateSyntax <String>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Move-FilesToDateFolder [[-Content] <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>] [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-TargetFolder` | String | ✅ | — | 0 | — | Zielstammordner, in den übereinstimmende Dateien in datumsbasierte Unterordner verschoben werden |
| `-Name` | String[] | — | — | 1 | `@('*')` | Name oder Muster der zu durchsuchenden Datei. Standard ist '*' 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | Dateiname oder Muster für die Suche aus der Pipeline-Eingabe. Standard ist '*' 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 2 | `@('.*')` | Regulärer Ausdruck zum Suchen in Inhalten *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 3 | `'.\'` | Basis-Pfad zum Auflösen relativer Pfade in der Ausgabe |
| `-Category` | String[] | — | — | Named | — | Nur Dateien ausgeben, die zu den ausgewählten Kategorien gehören |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Maximaler Parallelitätsgrad für Verzeichnisaufgaben |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Optional: Zeitüberschreitung für die Stornierung in Sekunden |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Suche über alle verfügbaren Laufwerke |
| `-Directory` | SwitchParameter | — | — | Named | — | Nur nach Verzeichnissen suchen |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | — | Schließen Sie sowohl Dateien als auch Verzeichnisse ein |
| `-PassThru` | SwitchParameter | — | — | Named | — | Gefundene Elemente als Objekte ausgeben |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Schließen Sie alternative Datenströme in die Suchergebnisse ein |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Nicht in Unterverzeichnisse rekursieren |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Symlinks und Verknüpfungen bei der Verzeichnisdurchquerung folgen |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | Optische Datenträgerlaufwerke einschließen |
| `-SearchDrives` | String[] | — | — | Named | `@()` | Optional: bestimmte Laufwerke durchsuchen |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | Optional: bestimmte Laufwerke durchsuchen |
| `-Root` | String[] | — | — | Named | `@()` | Optional: Bestimmte Verzeichnisse durchsuchen |
| `-LimitToRoot` | SwitchParameter | — | — | Named | — | Erzwingt die Suche nur innerhalb von Stammverzeichnissen, indem Verzeichniskomponenten aus Namenseingaben entfernt werden |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | Nicht-Textdateien bei der Suche nach Dateiinhalten einbeziehen |
| `-NoLinks` | SwitchParameter | — | — | Named | — | Erzwingt den unbeaufsichtigten Modus und wird keine Links generieren |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `[System.IO.MatchCasing]::PlatformDefault` | Ruft die Groß-/Kleinschreibung für Dateien und Verzeichnisse ab oder legt sie fest. |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | Wenn festgelegt, wird die Inhaltssuche in alternativen Datenströmen (ADS) durchgeführt |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Maximale Rekursionstiefe für die Verzeichnisdurchquerung. 0 bedeutet unbegrenzt. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Maximale Rekursionstiefe für die Suche nach Fortsetzungen im Baum nach oben. 0 bedeutet deaktiviert. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Maximale Dateigröße in Bytes, die in die Ergebnisse einbezogen wird. 0 bedeutet unbegrenzt. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Mindestdateigröße in Bytes, um in die Ergebnisse aufgenommen zu werden. 0 bedeutet kein Minimum. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Nur Dateien einschließen, die nach diesem Datum/dieser Uhrzeit (UTC) geändert wurden |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Nur Dateien einschließen, die vor diesem Datum/dieser Uhrzeit (UTC) geändert wurden |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | Dateiattribute, die übersprungen werden sollen (z. B. System, Versteckt oder Keine) |
| `-Exclude` | String[] | — | — | Named | `@('*\.git\*')` | Schließen Sie Dateien oder Verzeichnisse aus, die diesen Platzhaltermustern entsprechen |
| `-AllMatches` | SwitchParameter | — | — | Named | — | Suchen Sie nach mehr als einer Übereinstimmung in jeder Textzeile *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Übereinstimmungen unterscheiden zwischen Groß- und Kleinschreibung *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | Erfasst Kontextzeilen um Übereinstimmungen *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Für den Mustervergleich verwendeter Kulturname *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `'UTF8NoBOM'` | Gibt die Codierung für Zieldateien an *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | — | Nur der erste Treffer pro Datei wird zurückgegeben *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | — | Deaktiviert die Hervorhebung von übereinstimmenden Zeichenfolgen in der Ausgabe *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | Der NotMatch-Parameter sucht nach Text, der nicht dem Muster entspricht *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | — | Nur übereinstimmende Zeichenfolgen anstelle von MatchInfo-Objekten ausgeben *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | Verwenden Sie einfachen Zeichenfolgenabgleich anstelle von regulären Ausdrücken *(Parameter set: )* |
| `-DeleteEmptyDirs` | SwitchParameter | — | — | Named | — | Leere Quellverzeichnisse nach dem Verschieben von Dateien löschen |
| `-TargetFolderNameDateSyntax` | String | — | — | Named | `'Year + Month'` | Datumsyntax des Zielordnernamens |

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

Move-FilesToDateFolder -TargetFolder 'E:\Medien\Videos' -Name '.*\.mp4' -DeleteEmptyDirs

## Parameter Details

### `-TargetFolder <String>`

> Zielstammordner, in den übereinstimmende Dateien in datumsbasierte Unterordner verschoben werden

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Name <String[]>`

> Name oder Muster der zu durchsuchenden Datei. Standard ist '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `@('*')` |
| **Accept pipeline input?** | False |
| **Aliases** | `SourceFolder` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Input <Object>`

> Dateiname oder Muster für die Suche aus der Pipeline-Eingabe. Standard ist '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `FullName` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Content <String[]>`

> Regulärer Ausdruck zum Suchen in Inhalten

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@('.*')` |
| **Accept pipeline input?** | False |
| **Aliases** | `mc`, `matchcontent`, `regex`, `Pattern` |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | WithPattern |

<hr/>
### `-RelativeBasePath <String>`

> Basis-Pfad zum Auflösen relativer Pfade in der Ausgabe

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `'.\'` |
| **Accept pipeline input?** | False |
| **Aliases** | `base` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Category <String[]>`

> Nur Dateien ausgeben, die zu den ausgewählten Kategorien gehören

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `filetype` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxDegreeOfParallelism <Int32>`

> Maximaler Parallelitätsgrad für Verzeichnisaufgaben

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `threads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeoutSeconds <Int32>`

> Optional: Zeitüberschreitung für die Stornierung in Sekunden

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `maxseconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllDrives`

> Suche über alle verfügbaren Laufwerke

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Directory`

> Nur nach Verzeichnissen suchen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `dir` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FilesAndDirectories`

> Schließen Sie sowohl Dateien als auch Verzeichnisse ein

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `both`, `DirectoriesAndFiles` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> Gefundene Elemente als Objekte ausgeben

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeAlternateFileStreams`

> Schließen Sie alternative Datenströme in die Suchergebnisse ein

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoRecurse`

> Nicht in Unterverzeichnisse rekursieren

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FollowSymlinkAndJunctions`

> Symlinks und Verknüpfungen bei der Verzeichnisdurchquerung folgen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `symlinks`, `sl` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeOpticalDiskDrives`

> Optische Datenträgerlaufwerke einschließen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchDrives <String[]>`

> Optional: bestimmte Laufwerke durchsuchen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | `drives` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DriveLetter <Char[]>`

> Optional: bestimmte Laufwerke durchsuchen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Root <String[]>`

> Optional: Bestimmte Verzeichnisse durchsuchen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LimitToRoot`

> Erzwingt die Suche nur innerhalb von Stammverzeichnissen, indem Verzeichniskomponenten aus Namenseingaben entfernt werden

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `limit` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeNonTextFileMatching`

> Nicht-Textdateien bei der Suche nach Dateiinhalten einbeziehen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `binary` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoLinks`

> Erzwingt den unbeaufsichtigten Modus und wird keine Links generieren

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nl`, `ForceUnattenedMode` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CaseNameMatching <IO.MatchCasing>`

> Ruft die Groß-/Kleinschreibung für Dateien und Verzeichnisse ab oder legt sie fest.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `[System.IO.MatchCasing]::PlatformDefault` |
| **Accept pipeline input?** | False |
| **Aliases** | `casing`, `CaseSearchMaskMatching` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchADSContent`

> Wenn festgelegt, wird die Inhaltssuche in alternativen Datenströmen (ADS) durchgeführt

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxRecursionDepth <Int32>`

> Maximale Rekursionstiefe für die Verzeichnisdurchquerung. 0 bedeutet unbegrenzt.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `md`, `depth`, `maxdepth` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxSearchUpDepth <Int32>`

> Maximale Rekursionstiefe für die Suche nach Fortsetzungen im Baum nach oben. 0 bedeutet deaktiviert.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `maxupward` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxFileSize <Int64>`

> Maximale Dateigröße in Bytes, die in die Ergebnisse einbezogen wird. 0 bedeutet unbegrenzt.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `maxlength`, `maxsize` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinFileSize <Int64>`

> Mindestdateigröße in Bytes, um in die Ergebnisse aufgenommen zu werden. 0 bedeutet kein Minimum.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `minsize`, `minlength` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModifiedAfter <DateTime>`

> Nur Dateien einschließen, die nach diesem Datum/dieser Uhrzeit (UTC) geändert wurden

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ma`, `after` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModifiedBefore <DateTime>`

> Nur Dateien einschließen, die vor diesem Datum/dieser Uhrzeit (UTC) geändert wurden

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `before`, `mb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AttributesToSkip <IO.FileAttributes>`

> Dateiattribute, die übersprungen werden sollen (z. B. System, Versteckt oder Keine)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `[System.IO.FileAttributes]::System` |
| **Accept pipeline input?** | False |
| **Aliases** | `skipattr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Exclude <String[]>`

> Schließen Sie Dateien oder Verzeichnisse aus, die diesen Platzhaltermustern entsprechen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@('*\.git\*')` |
| **Accept pipeline input?** | False |
| **Aliases** | `skiplike` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllMatches`

> Suchen Sie nach mehr als einer Übereinstimmung in jeder Textzeile

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-CaseSensitive`

> Übereinstimmungen unterscheiden zwischen Groß- und Kleinschreibung

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Context <Int32[]>`

> Erfasst Kontextzeilen um Übereinstimmungen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Culture <String>`

> Für den Mustervergleich verwendeter Kulturname

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Encoding <String>`

> Gibt die Codierung für Zieldateien an

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'UTF8NoBOM'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-List`

> Nur der erste Treffer pro Datei wird zurückgegeben

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-NoEmphasis`

> Deaktiviert die Hervorhebung von übereinstimmenden Zeichenfolgen in der Ausgabe

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-NotMatch`

> Der NotMatch-Parameter sucht nach Text, der nicht dem Muster entspricht

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Raw`

> Nur übereinstimmende Zeichenfolgen anstelle von MatchInfo-Objekten ausgeben

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-SimpleMatch`

> Verwenden Sie einfachen Zeichenfolgenabgleich anstelle von regulären Ausdrücken

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-DeleteEmptyDirs`

> Leere Quellverzeichnisse nach dem Verschieben von Dateien löschen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TargetFolderNameDateSyntax <String>`

> Datumsyntax des Zielordnernamens

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Year + Month'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/de-DE/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/de-DE/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/de-DE/Find-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/de-DE/Find-Item.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-Fasti.md)
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
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/de-DE/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/de-DE/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/de-DE/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/de-DE/Write-TextFileAtomic.md)
