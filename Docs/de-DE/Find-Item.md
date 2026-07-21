# Find-Item

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** `l`

## Synopsis

> Durchsuchen Sie Dateien und Verzeichnisse mit erweiterten Filteroptionen.

## Description

```text
*   Finden von Dateien mit Find-Item -> l
        * Schnelle multithreaded Suche: Nutzt parallele und asynchrone
              E/A-Verarbeitung mit konfigurierbarem maximalen Parallelitätsgrad
              (Standard basierend auf CPU-Kernen) für effizientes Scannen von Dateien und Verzeichnissen.
        * Erweiterte Mustervergleich: Unterstützt Platzhalter (*, ?), rekursive Muster
              wie ** und komplexe Pfadstrukturen für präzise Datei- und Verzeichnisabfragen.
              **/Dateiname wird nur so lange rekursiv suchen, bis der Dateiname gefunden wurde. Mehrere dieser
              Muster sind erlaubt, solange ihnen ein Dateiname oder
              Verzeichnisname zum Abgleichen vorangestellt wird.
              dieser Musterparser hat die Leistungsfähigkeit von Resolve-Path, bietet aber Rekursions-
              funktionen und unterstützt nur * und ? als Platzhalter,
              wodurch Fehler mit Pfaden, die [ ]-Klammern enthalten, vermieden werden,
              sodass der -LiteralPath-Parameter nicht benötigt wird und die Integrität
              von Pfadabschnitten ohne Platzhalter erhalten bleibt, im Gegensatz zu einem Platzhalterabgleich auf dem
              gesamten vollständigen Pfad.
        * Erweiterte Inhaltssuche: Umfassende Select-String-Integration
              mit regulären Ausdrucksmustern in Dateiinhalten unter Verwendung des
              -Content-Parameters.
            * Optimierung für große Dateien: Verarbeitet extrem große Dateien mit intelligenten
                  überlappenden Puffern und minimaler Heap-Zuweisung
            * Mehrere Übereinstimmungsoptionen: Findet alle Übereinstimmungen pro Zeile (-AllMatches) oder
                  nur die erste Übereinstimmung pro Datei (-List)
            * Groß-/Kleinschreibungssteuerung: Groß-/Kleinschreibung beachten (-CaseSensitive)
                  mit kulturspezifischen Optionen (-Culture)
            * Kontexterfassung: Zeigt Zeilen vor und nach Übereinstimmungen (-Context) für
                  besseres Verständnis
            * Umgekehrte Übereinstimmung: Findet Dateien, die das Muster nicht enthalten (-NotMatch)
            * Ausgabeformate: Roher String-Ausgabe (-Raw), leise boolesche Antwort (-Quiet),
                  oder vollständige MatchInfo-Objekte
            * Musterarten: Reguläre Ausdrücke (Standard) oder einfacher literal String-
                  Abgleich (-SimpleMatch)
            * Kodierungsunterstützung: Dateikodierung angeben (-Encoding) für genaue Text-
                  verarbeitung
        * Pfadtypen-Flexibilität: Verarbeitet relative, absolute, UNC-, verwurzelte Pfade und
              NTFS-Alternativdatenströme (ADS) mit optionaler Inhaltssuche in Datenströmen.
        * Multi-Laufwerk-Unterstützung: Durchsucht alle Laufwerke mit -AllDrives oder bestimmte
              Laufwerke über -SearchDrives, einschließlich optischer Datenträger, falls angegeben.
        * Verzeichnis- und Dateifilterung: Optionen zur Suche nur in Verzeichnissen (-Directory),
              sowohl Dateien als auch Verzeichnissen (-FilesAndDirectories) oder Dateien mit Inhaltssuche.
        * Ausschlüsse und Grenzen: Muster ausschließen mit -Exclude, maximale Rekursionstiefe festlegen
              (-MaxRecursionDepth), Dateigrößenbeschränkungen (-MaxFileSize, -MinFileSize) und geänderte
              Datumsfilter (-ModifiedAfter, -ModifiedBefore).
        * Ausgabeanpassung: Unterstützt PassThru für FileInfo-/DirectoryInfo-Objekte,
              relative Pfade, Hyperlinks im beobachteten Modus oder einfache Pfade im unbeobachteten Modus
              (verwenden Sie -NoLinks bei Fehlern, um den unbeobachteten Modus zu erzwingen).
        * Leistungsoptimierungen: Überspringt standardmäßig Nicht-Textdateien für die Inhaltssuche
              (Überschreiben mit -IncludeNonTextFileMatching), verarbeitet lange Pfade (>260 Zeichen),
              und folgt Symlinks/Junctions.
        * Sicherheitsfunktionen: Timeout-Unterstützung (-TimeoutSeconds), ignoriert unzugängliche Elemente,
              überspringt standardmäßig Systemattribute und verhindert Endlosschleifen durch Verfolgung besuchter Knoten.

        * Gültige Kategorien für den Parameter -Category sind: Bilder, Videos, Musik, Dokumente, Tabellenkalkulationen, Präsentationen, Archive, Installer, Ausführbare Dateien, Datenbanken, DesignDateien, E-Books, Untertitel, Schriftarten, E-Mail-Dateien, 3D-Modelle, Spiel-Assets, Medizinische Dateien, Finanzdateien, Rechtsdateien, Quellcode, Skripte, AuszeichnungssprachenUndDaten, Konfiguration, Protokolle, Textdateien, Webdateien, MusiktexteUndAkkorde, Kreatives Schreiben, Rezepte, Forschungsdateien
```
## Syntax

```powershell
Find-Item [[-Name] <String[]>] [[-RelativeBasePath] <String>] [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-Directory] [-DriveLetter <Char[]>] [-Exclude <String[]>] [-FilesAndDirectories] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-Input <Object>] [-LimitToRoot] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-ModifiedBefore <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-NoLinks] [-NoRecurse] [-PassThru] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [<CommonParameters>]

Find-Item [[-Content] <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>] [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Quiet] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | — | Name oder Muster der zu durchsuchenden Datei. Standard ist '*' 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | Name oder Muster der zu durchsuchenden Datei. Standard ist '*' 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | — | Regulärer Ausdruck zum Suchen in Inhalten *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 2 | — | Basis-Pfad zum Auflösen relativer Pfade in der Ausgabe |
| `-Category` | String[] | — | — | Named | — | The `-Category` parameter. |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Maximaler Parallelitätsgrad für Verzeichnisaufgaben |
| `-TimeoutSeconds` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Optional: Zeitüberschreitung für die Stornierung in Sekunden |
| `-AllDrives` | SwitchParameter | — | — | Named | `False` | Suche über alle verfügbaren Laufwerke |
| `-Directory` | SwitchParameter | — | — | Named | `False` | Nur nach Verzeichnissen suchen |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | `False` | Schließen Sie sowohl Dateien als auch Verzeichnisse ein |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Gefundene Elemente als Objekte ausgeben |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | `False` | Schließen Sie alternative Datenströme in die Suchergebnisse ein |
| `-NoRecurse` | SwitchParameter | — | — | Named | `False` | Nicht in Unterverzeichnisse rekursieren |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | `False` | Symlinks und Verknüpfungen bei der Verzeichnisdurchquerung folgen |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | `False` | Optische Datenträgerlaufwerke einschließen |
| `-SearchDrives` | String[] | — | — | Named | — | Optional: bestimmte Laufwerke durchsuchen |
| `-DriveLetter` | Char[] | — | — | Named | — | Optional: bestimmte Laufwerke durchsuchen |
| `-Root` | String[] | — | — | Named | — | Optional: Bestimmte Verzeichnisse durchsuchen |
| `-LimitToRoot` | SwitchParameter | — | — | Named | `False` | Erzwingt die Suche nur innerhalb von Stammverzeichnissen, indem Verzeichniskomponenten aus Namenseingaben entfernt werden |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | `False` | Nicht-Textdateien bei der Suche nach Dateiinhalten einbeziehen |
| `-NoLinks` | SwitchParameter | — | — | Named | `False` | Erzwingt den unbeaufsichtigten Modus und wird keine Links generieren |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `PlatformDefault` | Ruft die Groß-/Kleinschreibung für Dateien und Verzeichnisse ab oder legt sie fest. |
| `-SearchADSContent` | SwitchParameter | — | — | Named | `False` | Wenn festgelegt, wird eine Inhaltsuche in alternativen Datenströmen (ADS) durchgeführt. Wenn nicht festgelegt, werden ADS-Dateiinformationen ausgegeben, ohne deren Inhalt zu durchsuchen. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Maximale Rekursionstiefe für die Verzeichnisdurchquerung. 0 bedeutet unbegrenzt. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Maximale Rekursionstiefe für die fortgesetzte Suche aufwärts im Baum bei relativen Suchen, während keine Elemente gefunden werden. 0 bedeutet deaktiviert. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Maximale Dateigröße in Bytes, die in die Ergebnisse einbezogen wird. 0 bedeutet unbegrenzt. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Mindestdateigröße in Bytes, um in die Ergebnisse aufgenommen zu werden. 0 bedeutet kein Minimum. |
| `-ModifiedAfter` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Nur Dateien einschließen, die nach diesem Datum/dieser Uhrzeit (UTC) geändert wurden. |
| `-ModifiedBefore` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Nur Dateien einschließen, die vor diesem Datum/dieser Uhrzeit (UTC) geändert wurden. |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `None` | Dateiattribute, die übersprungen werden sollen (z. B. System, Versteckt oder Keine). |
| `-Exclude` | String[] | — | — | Named | — | Dateien oder Verzeichnisse ausschließen, die diesen Platzhaltermustern entsprechen (z. B. *.tmp, *\bin\*). |
| `-AllMatches` | SwitchParameter | — | — | Named | `False` | Gibt an, dass das Cmdlet nach mehr als einer Übereinstimmung in jeder Textzeile sucht. Ohne diesen Parameter findet Select-String nur die erste Übereinstimmung in jeder Textzeile. *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | `False` | Gibt an, dass die Cmdlet-Übereinstimmungen Groß-/Kleinschreibung beachten. Standardmäßig wird die Groß-/Kleinschreibung nicht beachtet. *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | Erfasst die angegebene Anzahl von Zeilen vor und nach der Zeile, die dem Muster entspricht. *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Gibt einen Kulturnamen an, der mit dem angegebenen Muster übereinstimmt. Der Parameter „Culture“ muss mit dem Parameter „SimpleMatch“ verwendet werden. Das Standardverhalten verwendet die Kultur des aktuellen PowerShell-Runspaces (Sitzung). *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | — | Gibt den Codierungstyp für die Zieldatei an. Unterstützt mit Select-String kompatible Werte sowie erweiterte .NET-Codierungen. *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | `False` | Nur die erste Übereinstimmung aus jeder Eingabedatei wird zurückgegeben. Dies ist die effizienteste Methode, um eine Liste von Dateien abzurufen, deren Inhalt mit dem regulären Ausdruck übereinstimmt. *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | `False` | Deaktiviert die Hervorhebung von übereinstimmenden Zeichenfolgen in der Ausgabe. *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | `False` | Der Parameter NotMatch sucht nach Text, der nicht mit dem angegebenen Muster übereinstimmt. *(Parameter set: )* |
| `-Quiet` | SwitchParameter | — | — | Named | `False` | Gibt an, dass das Cmdlet eine einfache Antwort anstelle eines MatchInfo-Objekts zurückgibt. Der zurückgegebene Wert ist $true, wenn das Muster gefunden wird, oder $null, wenn das Muster nicht gefunden wird. *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | `False` | Bewirkt, dass das Cmdlet nur die übereinstimmenden Zeichenfolgen ausgibt, anstatt MatchInfo-Objekte. Dies führt zu einem Verhalten, das dem Unix grep oder dem Windows findstr.exe-Befehl am ähnlichsten ist. *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | `False` | Gibt an, dass das Cmdlet einen einfachen Abgleich anstelle eines Abgleichs mit regulären Ausdrücken verwendet. Bei einem einfachen Abgleich durchsucht Select-String die Eingabe nach dem Text im Parameter Pattern. Es interpretiert den Wert des Parameters Pattern nicht als Anweisung eines regulären Ausdrucks. *(Parameter set: )* |

## Examples

### Example 1

```powershell
Find-Item -Content "translation"

# Short form:
l -mc translation
```

Finden von Dateien, die ein bestimmtes Wort enthalten
Suchen Sie in allen Dateien im aktuellen Verzeichnis und Unterverzeichnissen nach dem Wort "Übersetzung".

### Example 2

```powershell
Find-Item "*.js" "Version == `"\d\d?\.\d\d?\.\d\d?`""

# Short form:
l *.js "Version == `"\d\d?\.\d\d?\.\d\d?`""
```

JavaScript-Dateien mit einer Versionszeichenfolge finden
Durchsuchen Sie JavaScript-Dateien nach einer Versionszeichenfolge im Format "Version == `x.y.z`".

### Example 3

```powershell
Find-Item -Directory

# Short form:
l -dir
```

Alle Verzeichnisse auflisten
Findet alle Verzeichnisse im aktuellen Verzeichnis und dessen Unterverzeichnissen.

### Example 4

```powershell
Find-Item ".\*.xml" -PassThru | % FullName

# Short form:
l *.xml -pt | % FullName
```

XML-Dateien suchen und Objekte übergeben
Durchsuchen Sie alle .xml-Dateien und übergeben Sie die Ergebnisse als Objekte über die Pipeline.

### Example 5

```powershell
Find-Item -IncludeAlternateFileStreams

# Short form:
l -ads
```

Alternative Datenströme einschließen
Durchsucht alle Dateien und schließt ihre alternativen Datenströme in die Ergebnisse ein.

### Example 6

```powershell
Find-Item "*.pdf" -AllDrives

# Short form:
l *.pdf -alldrives
```

Durchsuchen aller Laufwerke
Alle PDF-Dateien auf allen verfügbaren Laufwerken suchen.

### Example 7

```powershell
Find-Item "*.log" -TimeoutSeconds 300 -MaxDegreeOfParallelism 4

# Short form:
l *.log -maxseconds 300 -threads 4
```

Benutzerdefinierter Timeout und Parallelität
Durchsuchen Sie Logdateien mit einem 5-minütigen Timeout und begrenzter Parallelität.

### Example 8

```powershell
Get-ChildItem -Path "C:\Logs" | Find-Item -Content "error"

# Short form:
ls C:\Logs | l -matchcontent "error"
```

Pipeline-Eingabe
Übergeben Sie Dateipfade von Get-ChildItem, um nach Dateien zu suchen, die "error" enthalten.

### Example 9

```powershell
Find-Item "*.txt" -MaxRecursionDepth 2

# Short form:
l *.txt -maxdepth 2
```

Rekursionstiefe begrenzen
Nach Textdateien suchen, aber die Rekursion auf 2 Verzeichnisebenen beschränken.

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
Dateien finden, die nach dem 1. Januar 2025 geändert wurden.

### Example 12

```powershell
Find-Item -Exclude "*.tmp", "*\bin\*"

# Short form:
l -skiplike "*.tmp", "*\bin\*"
```

Bestimmte Muster ausschließen
Nach allen Dateien suchen, aber temporäre Dateien und Bin-Verzeichnisse ausschließen.

### Example 13

```powershell
Find-Item "*.docx" -SearchDrives "C:\", "D:\"

# Short form:
l *.docx -drives C:\, D:\
```

Bestimmte Laufwerke durchsuchen
Nur auf Laufwerk C: und D: nach .docx-Dateien suchen.

### Example 14

```powershell
Find-Item -Content "Error" -CaseSensitive

# Short form:
l -mc "Error" -CaseSensitive
```

Groß-/Kleinschreibung beachten bei Inhaltssuche
Suche nach Dateien, die "Error" (Groß-/Kleinschreibung beachten) in ihrem Inhalt enthalten.

### Example 15

```powershell
Find-Item -IncludeAlternateFileStreams -SearchADSContent -Content "secret"

# Short form:
l -ads -sads -mc "secret"
```

Inhalt des alternativen Datenstroms durchsuchen
Such nach Dateien mit alternativen Datenströmen, die "secret" enthalten.

### Example 16

```powershell
Find-Item "*.ps1" -Content "function" -AllMatches

# Short form:
l *.ps1 -mc "function" -AllMatches
```

Finde alle Übereinstimmungen pro Zeile
Suche nach allen Vorkommen von "function" in jeder Zeile, nicht nur der ersten Übereinstimmung.

### Example 17

```powershell
Find-Item "*.log" -Content "error" -Context 2,3

# Short form:
l *.log -mc "error" -Context 2,3
```

Kontext um Übereinstimmungen anzeigen
Zeigt 2 Zeilen vor und 3 Zeilen nach jeder Übereinstimmung an, um ein besseres Verständnis zu ermöglichen.

### Example 18

```powershell
Find-Item "*.txt" -Content "TODO:.*" -Raw

# Short form:
l *.txt -mc "TODO:.*" -Raw
```

Nur übereinstimmende Zeichenfolgen abrufen
Geben Sie nur die übereinstimmenden Textzeichenfolgen anstelle vollständiger Übereinstimmungsobjekte zurück.

### Example 19

```powershell
Find-Item "*.config" -Content "database" -Quiet

# Short form:
l *.config -mc "database" -Quiet
```

Einfache boolesche Prüfung
Geben Sie true/false anstelle von Übereinstimmungsdetails zurück, um zu überprüfen, ob ein Muster vorhanden ist.

### Example 20

```powershell
Find-Item "*.cs" -Content "class.*Controller" -List

# Short form:
l *.cs -mc "class.*Controller" -List
```

Nur den ersten Treffer pro Datei finden
Stoppen Sie beim ersten Treffer in jeder Datei für eine effiziente Dateiauflistung.

### Example 21

```powershell
Find-Item "*.txt" -Content "$variable[0]" -SimpleMatch

# Short form:
l *.txt -mc "$variable[0]" -SimpleMatch
```

Literalzeichenfolgenabgleich
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
Durchsuchen Sie Dateien mit einer bestimmten Kodierung für eine genaue Textverarbeitung.

### Example 24

```powershell
Find-Item "*.txt" -Content "Müller" -SimpleMatch -Culture "de-DE"

# Short form:
l *.txt -mc "Müller" -SimpleMatch -Culture "de-DE"
```

Kulturtextvergleich
Kulturspezifischen Abgleich mit SimpleMatch für internationalen Text verwenden.

### Example 25

```powershell
Find-Item "*.log" -Content "exception" -MinFileSize 1024 -ModifiedAfter "2025-01-01" -MaxRecursionDepth 3

# Short form:
l *.log -mc "exception" -minsize 1024 -after "2025-01-01" -maxdepth 3
```

Komplexe Inhaltssuche mit Dateifiltern
Kombinieren Sie Dateigröße, Datum und Inhaltsfilter für präzise Suchen.

## Parameter Details

### `-Name <String[]>`

> Name oder Muster der zu durchsuchenden Datei. Standard ist '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `like`, `Path`, `LiteralPath`, `Query`, `SearchMask`, `Include` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Input <Object>`

> Name oder Muster der zu durchsuchenden Datei. Standard ist '*'

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
| **Position?** | 1 |
| **Default value** | *(none)* |
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
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `base` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Category <String[]>`

> The `-Category` parameter.

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
### `-TimeoutSeconds <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `PlatformDefault` |
| **Accept pipeline input?** | False |
| **Aliases** | `casing`, `CaseSearchMaskMatching ` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchADSContent`

> Wenn festgelegt, wird eine Inhaltsuche in alternativen Datenströmen (ADS) durchgeführt. Wenn nicht festgelegt, werden ADS-Dateiinformationen ausgegeben, ohne deren Inhalt zu durchsuchen.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
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

> Maximale Rekursionstiefe für die fortgesetzte Suche aufwärts im Baum bei relativen Suchen, während keine Elemente gefunden werden. 0 bedeutet deaktiviert.

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
### `-ModifiedAfter <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

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
### `-ModifiedBefore <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

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
| **Default value** | `None` |
| **Accept pipeline input?** | False |
| **Aliases** | `skipattr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Exclude <String[]>`

> Dateien oder Verzeichnisse ausschließen, die diesen Platzhaltermustern entsprechen (z. B. *.tmp, *\bin\*).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `skiplike` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllMatches`

> Gibt an, dass das Cmdlet nach mehr als einer Übereinstimmung in jeder Textzeile sucht. Ohne diesen Parameter findet Select-String nur die erste Übereinstimmung in jeder Textzeile.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-CaseSensitive`

> Gibt an, dass die Cmdlet-Übereinstimmungen Groß-/Kleinschreibung beachten. Standardmäßig wird die Groß-/Kleinschreibung nicht beachtet.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Context <Int32[]>`

> Erfasst die angegebene Anzahl von Zeilen vor und nach der Zeile, die dem Muster entspricht.

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

> Gibt den Codierungstyp für die Zieldatei an. Unterstützt mit Select-String kompatible Werte sowie erweiterte .NET-Codierungen.

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
### `-List`

> Nur die erste Übereinstimmung aus jeder Eingabedatei wird zurückgegeben. Dies ist die effizienteste Methode, um eine Liste von Dateien abzurufen, deren Inhalt mit dem regulären Ausdruck übereinstimmt.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-NoEmphasis`

> Deaktiviert die Hervorhebung von übereinstimmenden Zeichenfolgen in der Ausgabe.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
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
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Quiet`

> Gibt an, dass das Cmdlet eine einfache Antwort anstelle eines MatchInfo-Objekts zurückgibt. Der zurückgegebene Wert ist $true, wenn das Muster gefunden wird, oder $null, wenn das Muster nicht gefunden wird.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Raw`

> Bewirkt, dass das Cmdlet nur die übereinstimmenden Zeichenfolgen ausgibt, anstatt MatchInfo-Objekte. Dies führt zu einem Verhalten, das dem Unix grep oder dem Windows findstr.exe-Befehl am ähnlichsten ist.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
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
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/de-DE/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/de-DE/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/de-DE/Find-DuplicateFiles.md)
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
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/de-DE/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/de-DE/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/de-DE/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/de-DE/Write-TextFileAtomic.md)
