# Set-FoundLocation

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `lcd`

## Synopsis

> Findet die erste passende Datei oder den ersten passenden Ordner und legt den Speicherort darauf fest.

## Description

Dieses Cmdlet hilft Ihnen, schnell Verzeichnisse zu wechseln, indem es Suchbegriffe verwendet, die den ersten passenden Ordner oder (optional) die erste passende Datei finden und dorthin wechselt. Es unterstützt erweiterte Filterung nach Inhalt, Dateiattributen, Größe, Änderungsdaten und vielen anderen Kriterien.

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
| `-InputObject` | Object | ✅ | ✅ (ByValue, ByPropertyName) | Named | — | Dateiname oder Muster für die Suche aus der Pipeline-Eingabe. Standard ist '*' *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | `@(".*")` | Regulärer Ausdruck zum Durchsuchen von Dateiinhalten *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Category` | String[] | — | — | Named | — | Nur Dateien ausgeben, die zu den ausgewählten Kategorien gehören |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Maximaler Parallelitätsgrad für Verzeichnisaufgaben |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Optional: Zeitüberschreitung für die Stornierung in Sekunden |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Suche über alle verfügbaren Laufwerke |
| `-File` | SwitchParameter | — | — | Named | — | Nur nach Dateinamen suchen und in den Ordner der ersten gefundenen Datei wechseln |
| `-DirectoriesAndFiles` | SwitchParameter | — | — | Named | — | Dateinamenabgleich einschließen und in den Ordner der ersten gefundenen Datei wechseln |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Schließen Sie alternative Datenströme in die Suchergebnisse ein |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Nicht in Unterverzeichnisse rekursieren |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Symlinks und Verknüpfungen bei der Verzeichnisdurchquerung folgen |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | Optische Datenträgerlaufwerke einschließen |
| `-SearchDrives` | String[] | — | — | Named | `@()` | Optional: bestimmte Laufwerke durchsuchen |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | Optional: bestimmte Laufwerke durchsuchen |
| `-Root` | String[] | — | — | Named | `@()` | Optional: bestimmte Basisordner in Kombination mit den angegebenen Namen durchsuchen |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | Nicht-Textdateien (Binärdateien, Bilder usw.) beim Durchsuchen von Dateiinhalten einschließen |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `(
            [System.IO.MatchCasing]::PlatformDefault)` | Ruft die Groß-/Kleinschreibung für Dateien und Verzeichnisse ab oder legt sie fest. |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | Wenn festgelegt, wird eine Inhaltsuche in alternativen Datenströmen (ADS) durchgeführt. Wenn nicht festgelegt, werden ADS-Dateiinformationen ausgegeben, ohne deren Inhalt zu durchsuchen. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Maximale Rekursionstiefe für die Verzeichnisdurchquerung. 0 bedeutet unbegrenzt. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Maximale Dateigröße in Bytes, die in die Ergebnisse einbezogen wird. 0 bedeutet unbegrenzt. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Mindestdateigröße in Bytes, um in die Ergebnisse aufgenommen zu werden. 0 bedeutet kein Minimum. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Nur Dateien einschließen, die nach diesem Datum/dieser Uhrzeit (UTC) geändert wurden. |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Nur Dateien einschließen, die vor diesem Datum/dieser Uhrzeit (UTC) geändert wurden. |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `(
            [System.IO.FileAttributes]::System)` | Dateiattribute, die übersprungen werden sollen (z. B. System, Versteckt oder Keine). |
| `-Exclude` | String[] | — | — | Named | `@("*\\.git\\*")` | Schließen Sie Dateien oder Verzeichnisse aus, die diesen Platzhaltermustern entsprechen (z. B. *.tmp, *\bin\*). |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Gibt an, dass die Cmdlet-Übereinstimmungen Groß-/Kleinschreibung beachten. Standardmäßig wird die Groß-/Kleinschreibung nicht beachtet. *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Gibt einen Kulturnamen an, der mit dem angegebenen Muster übereinstimmt. Der Parameter „Culture“ muss mit dem Parameter „SimpleMatch“ verwendet werden. Das Standardverhalten verwendet die Kultur des aktuellen PowerShell-Runspaces (Sitzung). *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `"UTF8NoBOM"` | Gibt den Typ der Codierung für die Zieldatei an. Der Standardwert ist utf8NoBOM. *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | Der Parameter NotMatch sucht nach Text, der nicht mit dem angegebenen Muster übereinstimmt. *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | Gibt an, dass das Cmdlet einen einfachen Abgleich anstelle eines Abgleichs mit regulären Ausdrücken verwendet. Bei einem einfachen Abgleich durchsucht Select-String die Eingabe nach dem Text im Parameter Pattern. Es interpretiert den Wert des Parameters Pattern nicht als Anweisung eines regulären Ausdrucks. *(Parameter set: )* |
| `-Push` | SwitchParameter | — | — | Named | — | Verwenden Sie Push-Location anstelle von Set-Location, um den Speicherort auf den Speicherortstapel zu pushen. |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | Wenn festgelegt, werden nur exakte Namensübereinstimmungen berücksichtigt. Standardmäßig wird Platzhaltervergleich verwendet, sofern der Name keine Platzhalterzeichen enthält. |

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

Änderungen am ersten Verzeichnis, das dem Muster '*.Console' entspricht, mithilfe des Alias.

### Set-FoundLocation -Name "*.ps1" -Content "function"

```powershell
Set-FoundLocation -Name "*.ps1" -Content "function"
```

Wechselt in das Verzeichnis, das die erste PowerShell-Datei enthält, die das Wort 'function' enthält.

### Set-FoundLocation *test* -File

```powershell
Set-FoundLocation *test* -File
```

Wechselt zum Verzeichnis, das die erste Datei mit 'test' im Namen enthält.

### Set-FoundLocation * '1\.\d+\.2025'

```powershell
Set-FoundLocation * '1\.\d+\.2025'
```

Änderungen an dem Verzeichnis, das die erste Datei enthält, deren Inhalt mit dem Muster '1.\d+\.2025' übereinstimmt.

## Parameter Details

### `-Name <String>`

> Dateiname oder Suchmuster.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `like`, `Path`, `LiteralPath`, `Query`, `SearchMask`, `Include` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-InputObject <Object>`

> Dateiname oder Muster für die Suche aus der Pipeline-Eingabe. Standard ist '*'

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `FullName` |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | InputObject |

<hr/>
### `-Content <String[]>`

> Regulärer Ausdruck zum Durchsuchen von Dateiinhalten

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `@(".*")` |
| **Accept pipeline input?** | False |
| **Aliases** | `mc`, `matchcontent`, `regex`, `Pattern` |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | WithPattern |

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
### `-File`

> Nur nach Dateinamen suchen und in den Ordner der ersten gefundenen Datei wechseln

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `filename` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DirectoriesAndFiles`

> Dateinamenabgleich einschließen und in den Ordner der ersten gefundenen Datei wechseln

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `both`, `FilesAndDirectories` |
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

> Optional: bestimmte Basisordner in Kombination mit den angegebenen Namen durchsuchen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeNonTextFileMatching`

> Nicht-Textdateien (Binärdateien, Bilder usw.) beim Durchsuchen von Dateiinhalten einschließen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `binary` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CaseNameMatching <IO.MatchCasing>`

> Ruft die Groß-/Kleinschreibung für Dateien und Verzeichnisse ab oder legt sie fest.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `(
            [System.IO.MatchCasing]::PlatformDefault)` |
| **Accept pipeline input?** | False |
| **Aliases** | `casing`, `CaseSearchMaskMatching` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchADSContent`

> Wenn festgelegt, wird eine Inhaltsuche in alternativen Datenströmen (ADS) durchgeführt. Wenn nicht festgelegt, werden ADS-Dateiinformationen ausgegeben, ohne deren Inhalt zu durchsuchen.

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

> Nur Dateien einschließen, die nach diesem Datum/dieser Uhrzeit (UTC) geändert wurden.

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

> Nur Dateien einschließen, die vor diesem Datum/dieser Uhrzeit (UTC) geändert wurden.

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

> Dateiattribute, die übersprungen werden sollen (z. B. System, Versteckt oder Keine).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `(
            [System.IO.FileAttributes]::System)` |
| **Accept pipeline input?** | False |
| **Aliases** | `skipattr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Exclude <String[]>`

> Schließen Sie Dateien oder Verzeichnisse aus, die diesen Platzhaltermustern entsprechen (z. B. *.tmp, *\bin\*).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@("*\\.git\\*")` |
| **Accept pipeline input?** | False |
| **Aliases** | `skiplike` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CaseSensitive`

> Gibt an, dass die Cmdlet-Übereinstimmungen Groß-/Kleinschreibung beachten. Standardmäßig wird die Groß-/Kleinschreibung nicht beachtet.

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

> Gibt einen Kulturnamen an, der mit dem angegebenen Muster übereinstimmt. Der Parameter „Culture“ muss mit dem Parameter „SimpleMatch“ verwendet werden. Das Standardverhalten verwendet die Kultur des aktuellen PowerShell-Runspaces (Sitzung).

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

> Gibt den Typ der Codierung für die Zieldatei an. Der Standardwert ist utf8NoBOM.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `"UTF8NoBOM"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-NotMatch`

> Der Parameter NotMatch sucht nach Text, der nicht mit dem angegebenen Muster übereinstimmt.

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

> Gibt an, dass das Cmdlet einen einfachen Abgleich anstelle eines Abgleichs mit regulären Ausdrücken verwendet. Bei einem einfachen Abgleich durchsucht Select-String die Eingabe nach dem Text im Parameter Pattern. Es interpretiert den Wert des Parameters Pattern nicht als Anweisung eines regulären Ausdrucks.

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
### `-Push`

> Verwenden Sie Push-Location anstelle von Set-Location, um den Speicherort auf den Speicherortstapel zu pushen.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExactMatch`

> Wenn festgelegt, werden nur exakte Namensübereinstimmungen berücksichtigt. Standardmäßig wird Platzhaltervergleich verwendet, sofern der Name keine Platzhalterzeichen enthält.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
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
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/de-DE/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/de-DE/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/de-DE/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/de-DE/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/de-DE/Rename-InProject.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/de-DE/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/de-DE/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/de-DE/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/de-DE/Write-TextFileAtomic.md)
