# Find-Item

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** `l

## Synopsis

> Search for files and directories with advanced filtering options.

## Description

* Finden von Dateien mit Find-Item -> l
        * Schnelle multi-threaded Suche: Nutzt parallele und asynchrone
              IO-Verarbeitung mit konfigurierbarem maximalen Grad der Parallelität
              (Standard basierend auf CPU-Kernen) für effizientes Datei- und Verzeichnisscannen.
        * Erweiterte Mustervergleiche: Unterstützt Platzhalter (*, ?), rekursive Muster
              wie **, und komplexe Pfadstrukturen für präzise Datei- und Verzeichnisabfragen.
              **/dateiname wird nur rekursiv fortgesetzt, bis dateiname gefunden wird. Mehrere solcher
              Muster sind erlaubt, solange ihnen ein Datei- oder
              Verzeichnisname vorausgeht.
              Dieser Musterparser hat die Leistungsfähigkeit von Resolve-Path, aber mit Rekursions-,
              funktionen, und unterstützt nur * und ? als Platzhalter,
              wodurch Fehler mit Pfaden mit Klammern [ ] vermieden werden, und die Notwendigkeit
              des Parameters -LiteralPath entfällt, während die Integrität
              für Pfadabschnitte ohne Platzhalter gewahrt bleibt, im Gegensatz zu einem Platzhalterabgleich auf dem
              gesamten vollständigen Pfad.
        * Verbesserte Inhaltssuche: Umfassende Select-String-Integration
              mit regulären Ausdrücken in Dateiinhalten über den
              Parameter -Content.
            * Optimierung für große Dateien: Handhabt extrem große Dateien mit intelligenten
                  überlappenden Puffern und minimaler Heap-Allokation
            * Mehrere Trefferoptionen: Findet alle Treffer pro Zeile (-AllMatches) oder
                  nur den ersten Treffer pro Datei (-List)
            * Groß-/Kleinschreibungssteuerung: Groß-/Kleinschreibung beachten (-CaseSensitive)
                  mit kulturspezifischen Optionen (-Culture)
            * Kontext erfassen: Zeigt Zeilen vor und nach Treffern (-Context) für
                  besseres Verständnis
            *Inverse Suche: Findet Dateien, die das Muster nicht enthalten (-NotMatch)
            * Ausgabeformate: Rohe Zeichenkettenausgabe (-Raw), stille boolesche Antwort (-Quiet),
                  oder vollständige MatchInfo-Objekte
            * Musterarten: Reguläre Ausdrücke (Standard) oder einfache literale Zeichenketten,
                  -vergleiche (-SimpleMatch)
            * Kodierungsunterstützung: Geben Sie die Dateikodierung (-Encoding) für genaue Textverarbeitung an
        * Pfadtypen-Flexibilität: Verarbeitet relative, absolute, UNC-, verwurzelte Pfade und
              NTFS-Alternativdatenströme (ADS) mit optionaler Inhaltssuche in Streams.
        * Multi-Laufwerk-Unterstützung: Durchsucht alle Laufwerke mit -AllDrives oder bestimmte
              Laufwerke über -SearchDrives, einschließlich optischer Datenträger, falls angegeben.
        * Verzeichnis- und Dateifilterung: Optionen zur Suche nur in Verzeichnissen (-Directory),
              sowohl Dateien als auch Verzeichnissen (-FilesAndDirectories), oder Dateien mit passendem Inhalt.
        * Ausschluss und Grenzen: Ausschlussmuster mit -Exclude, festlegen der maximalen Rekursionstiefe
              (-MaxRecursionDepth), Dateigrößenbeschränkungen (-MaxFileSize, -MinFileSize) und Änderungsdatum,
              -filter (-ModifiedAfter, -ModifiedBefore).
        * Ausgabeanpassung: Unterstützt PassThru für FileInfo/DirectoryInfo-Objekte,
              relative Pfade, Hyperlinks im beaufsichtigten Modus oder einfache Pfade im unbeaufsichtigten Modus
              (verwenden Sie -NoLinks bei Fehlern, um den unbeaufsichtigten Modus zu erzwingen).
        * Leistungsoptimierungen: Überspringt standardmäßig Nicht-Textdateien bei der Inhaltssuche
              (überschreiben mit -IncludeNonTextFileMatching), behandelt lange Pfade (>260 Zeichen)
              und folgt Symlinks/Junctions.
        * Sicherheitsfunktionen: Timeout-Unterstützung (-TimeoutSeconds), ignoriert unzugängliche Elemente,
              überspringt standardmäßig Systemattribute und verhindert Endlosschleifen durch Verfolgung besuchter Knoten.

## Syntax

```powershell
Find-Item [[-Name] <string[]>] [[-RelativeBasePath] <string>] [-Input <Object>] [-Category <string[]>] [-MaxDegreeOfParallelism <int>] [-TimeoutSeconds <int>] [-AllDrives] [-Directory] [-FilesAndDirectories] [-PassThru] [-IncludeAlternateFileStreams] [-NoRecurse] [-FollowSymlinkAndJunctions] [-IncludeOpticalDiskDrives] [-SearchDrives <string[]>] [-DriveLetter <char[]>] [-Root <string[]>] [-LimitToRoot] [-IncludeNonTextFileMatching] [-NoLinks] [-CaseNameMatching <MatchCasing>] [-SearchADSContent] [-MaxRecursionDepth <int>] [-MaxSearchUpDepth <int>] [-MaxFileSize <long>] [-MinFileSize <long>] [-ModifiedAfter <datetime>] [-ModifiedBefore <datetime>] [-AttributesToSkip <FileAttributes>] [-Exclude <string[]>] [<CommonParameters>]

Find-Item [[-Name] <string[]>] [[-Content] <string[]>] [[-RelativeBasePath] <string>] [-Input <Object>] [-Category <string[]>] [-MaxDegreeOfParallelism <int>] [-TimeoutSeconds <int>] [-AllDrives] [-Directory] [-FilesAndDirectories] [-PassThru] [-IncludeAlternateFileStreams] [-NoRecurse] [-FollowSymlinkAndJunctions] [-IncludeOpticalDiskDrives] [-SearchDrives <string[]>] [-DriveLetter <char[]>] [-Root <string[]>] [-LimitToRoot] [-IncludeNonTextFileMatching] [-NoLinks] [-CaseNameMatching <MatchCasing>] [-SearchADSContent] [-MaxRecursionDepth <int>] [-MaxSearchUpDepth <int>] [-MaxFileSize <long>] [-MinFileSize <long>] [-ModifiedAfter <datetime>] [-ModifiedBefore <datetime>] [-AttributesToSkip <FileAttributes>] [-Exclude <string[]>] [-AllMatches] [-CaseSensitive] [-Context <int[]>] [-Culture <string>] [-Encoding <string>] [-List] [-NoEmphasis] [-NotMatch] [-Quiet] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | — | Dateiname oder Suchmuster. Standard ist '*' 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | Dateiname oder Suchmuster. Standard ist '*' 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | — | Regulärer Ausdruck zum Durchsuchen von Inhalten *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 2 | — | Basispfad zum Auflösen relativer Pfade in der Ausgabe |
| `-Category` | String[] | — | — | Named | — | The `-Category` parameter. |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Maximaler Parallelitätsgrad für Verzeichnisaufgaben |
| `-TimeoutSeconds` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Optional: Abbruch-Time-Out in Sekunden |
| `-AllDrives` | SwitchParameter | — | — | Named | `False` | Durchsuchen aller verfügbaren Laufwerke |
| `-Directory` | SwitchParameter | — | — | Named | `False` | Search for directories only |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | `False` | Sowohl Dateien als auch Verzeichnisse einschließen |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Entferne alle Leerzeichen aus dieser Zeichenkette |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | `False` | Alternate-Datenströme in Suchergebnisse einbeziehen |
| `-NoRecurse` | SwitchParameter | — | — | Named | `False` | Nicht in Unterverzeichnisse absteigen |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | `False` | Folgen Sie symbolischen Verknüpfungen und Verzeichnisverbindungen während der Verzeichnisdurchquerung |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | `False` | Optische Laufwerke einschließen |
| `-SearchDrives` | String[] | — | — | Named | — | Optional: bestimmte Laufwerke durchsuchen |
| `-DriveLetter` | Char[] | — | — | Named | — | Optional: bestimmte Laufwerke durchsuchen |
| `-Root` | String[] | — | — | Named | — | Optional: bestimmte Verzeichnisse durchsuchen |
| `-LimitToRoot` | SwitchParameter | — | — | Named | `False` | Erzwingt die Suche nur innerhalb von Root-Verzeichnissen, indem Verzeichniskomponenten aus Namenseingaben entfernt werden |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | `False` | Include non-text files when searching file contents |
| `-NoLinks` | SwitchParameter | — | — | Named | `False` | Erzwingt den unbeaufsichtigten Modus und generiert keine Links |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `PlatformDefault` | Legt die Groß-/Kleinschreibung für Dateien und Verzeichnisse fest oder ruft sie ab. |
| `-SearchADSContent` | SwitchParameter | — | — | Named | `False` | Wenn gesetzt, führt eine Inhaltsuche in alternativen Datenströmen (ADS) durch. Wenn nicht gesetzt, gibt ADS-Dateiinformationen aus, ohne deren Inhalt zu durchsuchen. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Maximale Rekursionstiefe für die Verzeichnisdurchquerung. 0 bedeutet unbegrenzt. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Maximale Rekursionstiefe für die fortgesetzte Suche im Baum nach oben für relative Suchvorgänge, während keine Elemente gefunden werden. 0 bedeutet deaktiviert. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Maximale Dateigröße in Bytes, die in die Ergebnisse einbezogen werden soll. 0 bedeutet unbegrenzt. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Mindestdateigröße in Bytes, die in die Ergebnisse aufgenommen werden soll. 0 bedeutet kein Minimum. |
| `-ModifiedAfter` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Nur Dateien einschließen, die nach diesem Datum/Uhrzeit (UTC) geändert wurden. |
| `-ModifiedBefore` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Nur Dateien einbeziehen, die vor diesem Datum/Zeitpunkt (UTC) geändert wurden. |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `None` | Zu überspringende Dateiattribute (z. B. System, Versteckt oder Keine). |
| `-Exclude` | String[] | — | — | Named | — | Dateien oder Verzeichnisse, die diesen Platzhaltermustern entsprechen, ausschließen (z. B. *.tmp, *\bin\*). |
| `-AllMatches` | SwitchParameter | — | — | Named | `False` | Gibt an, dass das Cmdlet nach mehr als einer Übereinstimmung in jeder Textzeile sucht. Ohne diesen Parameter findet Select-String nur die erste Übereinstimmung in jeder Textzeile. *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | `False` | Gibt an, dass die Übereinstimmungen des Cmdlets case-sensitive sind. Standardmäßig sind Übereinstimmungen nicht case-sensitive. *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | Erfasst die angegebene Anzahl von Zeilen vor und nach der Zeile, die mit dem Muster übereinstimmt. *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Gibt einen Kulturnamen an, der dem angegebenen Muster entspricht. Der Parameter Culture muss mit dem Parameter SimpleMatch verwendet werden. Das Standardverhalten verwendet die Kultur des aktuellen PowerShell-Runspaces (Sitzung). *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | — | Gibt den Codierungstyp für die Zieldatei an. Unterstützt Select-String-kompatible Werte und erweiterte .NET-Codierungen. *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | `False` | Nur die erste übereinstimmende Textinstanz aus jeder Eingabedatei wird zurückgegeben. Dies ist die effizienteste Methode, um eine Liste von Dateien abzurufen, deren Inhalt mit dem regulären Ausdruck übereinstimmt. *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | `False` | Deaktiviert die Hervorhebung übereinstimmender Zeichenfolgen in der Ausgabe. *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | `False` | Der Parameter „NotMatch“ sucht nach Text, der nicht dem angegebenen Muster entspricht. *(Parameter set: )* |
| `-Quiet` | SwitchParameter | — | — | Named | `False` | Gibt an, dass das Cmdlet eine einfache Antwort anstelle eines MatchInfo-Objekts zurückgibt. Der zurückgegebene Wert ist $true, wenn das Muster gefunden wird, oder $null, wenn das Muster nicht gefunden wird. *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | `False` | Bewirkt, dass das Cmdlet nur die übereinstimmenden Zeichenfolgen ausgibt, anstelle von MatchInfo-Objekten. Dies führt zu einem Verhalten, das dem Unix-Befehl grep oder dem Windows-Befehl findstr.exe am ähnlichsten ist. *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | `False` | Gibt an, dass das Cmdlet einen einfachen Vergleich anstelle eines regulären Ausdrucks verwendet. Bei einem einfachen Vergleich durchsucht Select-String die Eingabe nach dem Text im Parameter Pattern. Es interpretiert den Wert des Parameters Pattern nicht als regulären Ausdruck. *(Parameter set: )* |

## Examples

### Example 1

```powershell
Find-Item -Content "translation"

# Short form:
l -mc translation
```

Finden Sie Dateien, die ein bestimmtes Wort enthalten
Durchsuchen Sie alle Dateien im aktuellen Verzeichnis und Unterverzeichnissen nach dem Wort "Übersetzung".

### Example 2

```powershell
Find-Item "*.js" "Version == `"\d\d?\.\d\d?\.\d\d?`""

# Short form:
l *.js "Version == `"\d\d?\.\d\d?\.\d\d?`""
```

Finden Sie JavaScript-Dateien mit einer Versionszeichenfolge
Durchsuchen Sie JavaScript-Dateien, die eine Versionszeichenfolge im Format "Version == `x.y.z`" enthalten.

### Example 3

```powershell
Find-Item -Directory

# Short form:
l -dir
```

Liste alle Verzeichnisse
Finde alle Verzeichnisse im aktuellen Verzeichnis und seinen Unterverzeichnissen.

### Example 4

```powershell
Find-Item ".\*.xml" -PassThru | % FullName

# Short form:
l *.xml -pt | % FullName
```

XML-Dateien finden und Objekte übergeben
Durchsuchen Sie alle .xml-Dateien und übergeben Sie die Ergebnisse als Objekte über die Pipeline.

### Example 5

```powershell
Find-Item -IncludeAlternateFileStreams

# Short form:
l -ads
```

Alternative Datenströme einbeziehen
Durchsuchen Sie alle Dateien und beziehen Sie deren alternative Datenströme in die Ergebnisse ein.

### Example 6

```powershell
Find-Item "*.pdf" -AllDrives

# Short form:
l *.pdf -alldrives
```

Suche über alle Laufwerke
Suche nach allen PDF-Dateien auf allen verfügbaren Laufwerken.

### Example 7

```powershell
Find-Item "*.log" -TimeoutSeconds 300 -MaxDegreeOfParallelism 4

# Short form:
l *.log -maxseconds 300 -threads 4
```

Benutzerdefiniertes Timeout und Parallelität
Suche nach Logdateien mit einem 5-minütigen Timeout und begrenzter Parallelität.

### Example 8

```powershell
Get-ChildItem -Path "C:\Logs" | Find-Item -Content "error"

# Short form:
ls C:\Logs | l -matchcontent "error"
```

Pipeline-Eingabe
Übergeben Sie Dateipfade von Get-ChildItem, um nach Dateien zu suchen, die "Fehler" enthalten.

### Example 9

```powershell
Find-Item "*.txt" -MaxRecursionDepth 2

# Short form:
l *.txt -maxdepth 2
```

Rekursionstiefe begrenzen
Textdateien suchen, aber Rekursion auf 2 Verzeichnisebenen begrenzen.

### Example 10

```powershell
Find-Item -MinFileSize 1048576 -MaxFileSize 10485760

# Short form:
l -minsize 1048576 -maxsize 10485760
```

Nach Dateigröße filtern
Dateien finden, die größer als 1 MB, aber kleiner als 10 MB sind.

### Example 11

```powershell
Find-Item -ModifiedAfter "2025-01-01"

# Short form:
l -after "2025-01-01"
```

Nach Änderungsdatum filtern
Finden Sie Dateien, die nach dem 1. Januar 2025 geändert wurden.

### Example 12

```powershell
Find-Item -Exclude "*.tmp", "*\bin\*"

# Short form:
l -skiplike "*.tmp", "*\bin\*"
```

Bestimmte Muster ausschließen
Durchsuchen Sie alle Dateien, schließen Sie aber temporäre Dateien und Bin-Verzeichnisse aus.

### Example 13

```powershell
Find-Item "*.docx" -SearchDrives "C:\", "D:\"

# Short form:
l *.docx -drives C:\, D:\
```

Bestimmte Laufwerke durchsuchen
Suchen Sie nur auf Laufwerk C: und D: nach .docx-Dateien.

### Example 14

```powershell
Find-Item -Content "Error" -CaseSensitive

# Short form:
l -mc "Error" -CaseSensitive
```

Groß-/Kleinschreibung beachten bei der Inhaltssuche
Suchen Sie in Dateiinhalten nach "Error" (Groß-/Kleinschreibung beachten).

### Example 15

```powershell
Find-Item -IncludeAlternateFileStreams -SearchADSContent -Content "secret"

# Short form:
l -ads -sads -mc "secret"
```

Alternativen Datenstrom-Inhalt durchsuchen
Nach Dateien mit alternativen Datenströmen suchen, die "secret" enthalten.

### Example 16

```powershell
Find-Item "*.ps1" -Content "function" -AllMatches

# Short form:
l *.ps1 -mc "function" -AllMatches
```

Finden Sie alle Übereinstimmungen pro Zeile
Suchen Sie nach allen Vorkommen von "function" in jeder Zeile, nicht nur nach der ersten Übereinstimmung.

### Example 17

```powershell
Find-Item "*.log" -Content "error" -Context 2,3

# Short form:
l *.log -mc "error" -Context 2,3
```

Kontext um Treffer anzeigen
Zeigt 2 Zeilen vor und 3 Zeilen nach jedem Treffer für besseres Verständnis.

### Example 18

```powershell
Find-Item "*.txt" -Content "TODO:.*" -Raw

# Short form:
l *.txt -mc "TODO:.*" -Raw
```

Nur übereinstimmende Zeichenfolgen abrufen
Gibt die übereinstimmenden Textstrings anstelle vollständiger Übereinstimmungsobjekte zurück.

### Example 19

```powershell
Find-Item "*.config" -Content "database" -Quiet

# Short form:
l *.config -mc "database" -Quiet
```

Einfacher Boolean-Check
Statt Übereinstimmungsdetails true/false zurückgeben, um zu prüfen, ob Muster vorhanden ist.

### Example 20

```powershell
Find-Item "*.cs" -Content "class.*Controller" -List

# Short form:
l *.cs -mc "class.*Controller" -List
```

Nur den ersten Treffer pro Datei finden
Stopp nach dem ersten Treffer in jeder Datei für effizientes Auflisten.

### Example 21

```powershell
Find-Item "*.txt" -Content "$variable[0]" -SimpleMatch

# Short form:
l *.txt -mc "$variable[0]" -SimpleMatch
```

Literal String Matching
Suche nach exaktem Text ohne Regex-Interpretation mit SimpleMatch.

### Example 22

```powershell
Find-Item "*.js" -Content "console\.log" -NotMatch

# Short form:
l *.js -mc "console\.log" -NotMatch
```

Dateien finden, die KEIN Muster enthalten
Verwenden Sie NotMatch, um Dateien zu finden, die das angegebene Muster nicht enthalten.

### Example 23

```powershell
Find-Item "*.txt" -Content "café" -Encoding UTF8

# Short form:
l *.txt -mc "café" -Encoding UTF8
```

Dateikodierung angeben
Durchsuchen Sie Dateien mit einer bestimmten Kodierung, um eine genaue Textverarbeitung zu gewährleisten.

### Example 24

```powershell
Find-Item "*.txt" -Content "Müller" -SimpleMatch -Culture "de-DE"

# Short form:
l *.txt -mc "Müller" -SimpleMatch -Culture "de-DE"
```

Kulturtextvergleich
Verwende kulturspezifisches Matching mit SimpleMatch für internationalen Text.

### Example 25

```powershell
Find-Item "*.log" -Content "exception" -MinFileSize 1024 -ModifiedAfter "2025-01-01" -MaxRecursionDepth 3

# Short form:
l *.log -mc "exception" -minsize 1024 -after "2025-01-01" -maxdepth 3
```

Erweiterte Inhaltssuche mit Dateifiltern
Kombinieren Sie Dateigröße, Datum und Inhaltfilter für präzise Suchen.

## Related Links

- [Find-Item on GitHub](https://github.com/genXdev/genXdev)
