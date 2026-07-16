# Find-Item

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** `l

## Synopsis

> [NL] Zoek naar bestanden en mappen met geavanceerde filteropties.

## Description

* Zoek bestanden met Find-Item -> l
        * Snelle multi-threaded zoekopdracht: maakt gebruik van parallelle en asynchrone
              IO verwerking met configureerbare maximale mate van parallellisme
              (standaard gebaseerd op CPU-kernen) voor efficiënt bestand- en directory scannen.
        * Geavanceerd patroonherkenning: Ondersteunt jokertekens (*, ?), recursieve patronen
              zoals **, en complexe padstructuren voor precieze bestand- en directoryquery's.
              **/bestandsnaam zal alleen recursief doorzoeken totdat bestandsnaam is gevonden. Meerdere van deze
              patronen zijn toegestaan, zolang ze worden voorafgegaan door een bestandsnaam of
              directorynaam om te matchen.
              Deze patroonparser heeft de kracht van Resolve-Path maar heeft recursie
              functies, en ondersteunt alleen * en ? als jokertekens,
              waardoor bugs met paden met [ ] haakjes worden voorkomen,
              waardoor de noodzaak voor de -LiteralPath parameter vervalt, terwijl de integriteit
              behouden blijft voor padsecties zonder jokertekens, in tegenstelling tot een jokerteken match op het
              volledige pad.
        * Verbeterd inhoud zoeken: Uitgebreide Select-String integratie
              met reguliere expressiepatronen in bestandsinhoud met behulp van de
              -Content parameter.
            * Optimalisatie voor grote bestanden: Verwerkt extreem grote bestanden met slimme
                  overlappende buffers en minimale heapallocatie
            * Meerdere matchopties: Vind alle matches per regel (-AllMatches) of
                  alleen de eerste match per bestand (-List)
            * Hoofdlettergevoeligheid controle: Hoofdlettergevoelig matchen (-CaseSensitive)
                  met cultuurspecifieke opties (-Culture)
            * Context vastleggen: Toon regels voor en na matches (-Context) voor
                  beter begrip
            * Inverse matching: Vind bestanden die het patroon niet bevatten (-NotMatch)
            * Uitvoerformaten: Onbewerkte tekenreeksuitvoer (-Raw), stille booleaanse respons (-Quiet),
                  of volledige MatchInfo-objecten
            * Patroontypes: Reguliere expressies (standaard) of eenvoudige letterlijke tekenreeks
                  matching (-SimpleMatch)
            * Codering ondersteuning: Specificeer bestandscodering (-Encoding) voor nauwkeurige tekst
                  verwerking
        * Padvariabiliteit: Verwerkt relatieve, absolute, UNC, gewortelde paden, en
              NTFS alternatieve datastromen (ADS) met optionele inhoudszoekopdracht in streams.
        * Multi-schijf ondersteuning: Zoekt over alle schijven met -AllDrives of specifieke
              schijven via -SearchDrives, inclusief optische schijven indien gespecificeerd.
        * Directory en bestandsfiltering: Opties om alleen directories te doorzoeken (-Directory),
              zowel bestanden als directories (-FilesAndDirectories), of bestanden met inhoudsmatchende.
        * Uitsluiting en limieten: Sluit patronen uit met -Exclude, stel maximale recursiediepte in
              (-MaxRecursionDepth), bestandsgrootte limieten (-MaxFileSize, -MinFileSize), en gewijzigde
              datumfilters (-ModifiedAfter, -ModifiedBefore).
        * Uitvoer aanpassen: Ondersteunt PassThru voor FileInfo/DirectoryInfo-objecten,
              relatieve paden, hyperlinks in bewaakte modus, of gewone paden in onbewaakte modus
              (gebruik -NoLinks in geval van problemen om onbewaakte modus af te dwingen).
        * Prestatieoptimalisaties: Slaat niet-tekstbestanden standaard over voor inhoudszoekopdrachten
              (overschrijven met -IncludeNonTextFileMatching), verwerkt lange paden (>260 tekens),
              en volgt symlinks/juncties.
        * Veiligheidsfuncties: Timeout-ondersteuning (-TimeoutSeconds), negeert ontoegankelijke items,
              slaat systeemattributen standaard over en voorkomt oneindige lussen met tracking van bezochte knooppunten.

## Syntax

```powershell
Find-Item [[-Name] <string[]>] [[-RelativeBasePath] <string>] [-Input <Object>] [-Category <string[]>] [-MaxDegreeOfParallelism <int>] [-TimeoutSeconds <int>] [-AllDrives] [-Directory] [-FilesAndDirectories] [-PassThru] [-IncludeAlternateFileStreams] [-NoRecurse] [-FollowSymlinkAndJunctions] [-IncludeOpticalDiskDrives] [-SearchDrives <string[]>] [-DriveLetter <char[]>] [-Root <string[]>] [-LimitToRoot] [-IncludeNonTextFileMatching] [-NoLinks] [-CaseNameMatching <MatchCasing>] [-SearchADSContent] [-MaxRecursionDepth <int>] [-MaxSearchUpDepth <int>] [-MaxFileSize <long>] [-MinFileSize <long>] [-ModifiedAfter <datetime>] [-ModifiedBefore <datetime>] [-AttributesToSkip <FileAttributes>] [-Exclude <string[]>] [<CommonParameters>]

Find-Item [[-Name] <string[]>] [[-Content] <string[]>] [[-RelativeBasePath] <string>] [-Input <Object>] [-Category <string[]>] [-MaxDegreeOfParallelism <int>] [-TimeoutSeconds <int>] [-AllDrives] [-Directory] [-FilesAndDirectories] [-PassThru] [-IncludeAlternateFileStreams] [-NoRecurse] [-FollowSymlinkAndJunctions] [-IncludeOpticalDiskDrives] [-SearchDrives <string[]>] [-DriveLetter <char[]>] [-Root <string[]>] [-LimitToRoot] [-IncludeNonTextFileMatching] [-NoLinks] [-CaseNameMatching <MatchCasing>] [-SearchADSContent] [-MaxRecursionDepth <int>] [-MaxSearchUpDepth <int>] [-MaxFileSize <long>] [-MinFileSize <long>] [-ModifiedAfter <datetime>] [-ModifiedBefore <datetime>] [-AttributesToSkip <FileAttributes>] [-Exclude <string[]>] [-AllMatches] [-CaseSensitive] [-Context <int[]>] [-Culture <string>] [-Encoding <string>] [-List] [-NoEmphasis] [-NotMatch] [-Quiet] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | — | [NL] Bestandsnaam of patroon om naar te zoeken. Standaard is '*'. 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | [NL] Bestandsnaam of patroon om naar te zoeken. Standaard is '*'. 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | — | Reguliere expressie patroon om te zoeken in inhoud *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 2 | — | Basispad voor het oplossen van relatieve paden in uitvoer |
| `-Category` | String[] | — | — | Named | — | The `-Category` parameter. |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Maximale mate van parallellisme voor directory-taken |
| `-TimeoutSeconds` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Optioneel: time-out voor annulering in seconden |
| `-AllDrives` | SwitchParameter | — | — | Named | `False` | Doorzoek alle beschikbare schijven |
| `-Directory` | SwitchParameter | — | — | Named | `False` | Zoek alleen naar mappen |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | `False` | Inclusief zowel bestanden als mappen |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Output matched items as objects |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | `False` | Alternatieve gegevensstromen opnemen in zoekresultaten |
| `-NoRecurse` | SwitchParameter | — | — | Named | `False` | Niet recursief in subdirectories |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | `False` | Volg symbolische koppelingen en junctions tijdens het doorlopen van mappen |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | `False` | Inclusief optische schijfstations |
| `-SearchDrives` | String[] | — | — | Named | — | Optioneel: specifieke schijven doorzoeken |
| `-DriveLetter` | Char[] | — | — | Named | — | Optioneel: specifieke schijven doorzoeken |
| `-Root` | String[] | — | — | Named | — | Optioneel: specifieke mappen doorzoeken |
| `-LimitToRoot` | SwitchParameter | — | — | Named | `False` | Enforces searching only within Root directories by stripping directory components from Name inputs |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | `False` | Bij het doorzoeken van bestandsinhoud ook niet-tekstbestanden opnemen |
| `-NoLinks` | SwitchParameter | — | — | Named | `False` | Forceert de onbemande modus en genereert geen links |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `PlatformDefault` | Haalt de hoofdlettergevoeligheid voor bestanden en mappen op of stelt deze in |
| `-SearchADSContent` | SwitchParameter | — | — | Named | `False` | Wanneer ingesteld, wordt er inhoud gezocht binnen alternatieve data streams (ADS). Wanneer niet ingesteld, wordt ADS-bestandsinfo weergegeven zonder de inhoud te doorzoeken. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Maximale recursiediepte voor directorytraversal. 0 betekent onbeperkt. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Maximale recursiediepte voor het verder omhoog zoeken in de boom voor relatieve zoekopdrachten, terwijl er geen items worden gevonden. 0 betekent uitgeschakeld. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Maximale bestandsgrootte in bytes om op te nemen in de resultaten. 0 betekent onbeperkt. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Minimale bestandsgrootte in bytes om op te nemen in resultaten. 0 betekent geen minimum. |
| `-ModifiedAfter` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Alleen bestanden opnemen die na deze datum/tijd (UTC) zijn gewijzigd. |
| `-ModifiedBefore` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Alleen bestanden opnemen die zijn gewijzigd vóór deze datum/tijd (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `None` | Te overslaan bestandskenmerken (bijv. Systeem, Verborgen of Geen). |
| `-Exclude` | String[] | — | — | Named | — | Sluit bestanden of mappen uit die overeenkomen met deze jokerpatronen (bijv. *.tmp, *\bin\*). |
| `-AllMatches` | SwitchParameter | — | — | Named | `False` | Geeft aan dat de cmdlet naar meer dan één overeenkomst per tekstregel zoekt. Zonder deze parameter vindt Select-String alleen de eerste overeenkomst in elke tekstregel. *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | `False` | Geeft aan dat de cmdlet-matches hoofdlettergevoelig zijn. Standaard zijn matches niet hoofdlettergevoelig. *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | Legt het opgegeven aantal regels vast voor en na de regel die overeenkomt met het patroon. *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Specificeert een cultuurnaam die overeenkomt met het opgegeven patroon. De parameter Culture moet worden gebruikt met de parameter SimpleMatch. Het standaardgedrag gebruikt de cultuur van de huidige PowerShell-runspace (sessie). *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | — | Specificeert het type codering voor het doelbestand. Ondersteunt waarden die compatibel zijn met Select-String en uitgebreide .NET-coderingen. *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | `False` | Alleen het eerste exemplaar van overeenkomende tekst wordt geretourneerd uit elk invoerbestand. Dit is de meest efficiënte manier om een lijst te krijgen van bestanden waarvan de inhoud overeenkomt met de reguliere expressie. *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | `False` | Schakelt markering van overeenkomende tekenreeksen in uitvoer uit. *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | `False` | De parameter NotMatch vindt tekst die niet overeenkomt met het opgegeven patroon. *(Parameter set: )* |
| `-Quiet` | SwitchParameter | — | — | Named | `False` | Geeft aan dat de cmdlet een eenvoudig antwoord retourneert in plaats van een MatchInfo-object. De geretourneerde waarde is $true als het patroon wordt gevonden of $null als het patroon niet wordt gevonden. *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | `False` | Zorgt ervoor dat de cmdlet alleen de overeenkomende tekenreeksen uitvoert, in plaats van MatchInfo-objecten. Dit resulteert in gedrag dat het meest lijkt op de Unix grep- of Windows findstr.exe-opdrachten. *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | `False` | Geeft aan dat de cmdlet een eenvoudige overeenkomst gebruikt in plaats van een reguliere expressie-overeenkomst. Bij een eenvoudige overeenkomst doorzoekt Select-String de invoer op de tekst in de parameter Pattern. Het interpreteert de waarde van de parameter Pattern niet als een reguliere expressie-instructie. *(Parameter set: )* |

## Examples

### Example 1

```powershell
Find-Item -Content "translation"

# Short form:
l -mc translation
```

grep -r "translation" .

### Example 2

```powershell
Find-Item "*.js" "Version == `"\d\d?\.\d\d?\.\d\d?`""

# Short form:
l *.js "Version == `"\d\d?\.\d\d?\.\d\d?`""
```

Find JavaScript files with a version string
Search for JavaScript files containing a version string in the format "Version == `x.y.z`".

### Example 3

```powershell
Find-Item -Directory

# Short form:
l -dir
```

List alle mappen
Vind alle mappen in de huidige map en de submappen ervan.

### Example 4

```powershell
Find-Item ".\*.xml" -PassThru | % FullName

# Short form:
l *.xml -pt | % FullName
```

Zoek naar XML-bestanden en geef objecten door
Zoek naar alle .xml-bestanden en geef de resultaten als objecten door de pijplijn.

### Example 5

```powershell
Find-Item -IncludeAlternateFileStreams

# Short form:
l -ads
```

Alternatieve gegevensstromen opnemen
Doorzoek alle bestanden en neem hun alternatieve gegevensstromen op in de resultaten.

### Example 6

```powershell
Find-Item "*.pdf" -AllDrives

# Short form:
l *.pdf -alldrives
```

Zoek op alle schijven
Zoek naar alle PDF-bestanden op alle beschikbare schijven.

### Example 7

```powershell
Find-Item "*.log" -TimeoutSeconds 300 -MaxDegreeOfParallelism 4

# Short form:
l *.log -maxseconds 300 -threads 4
```

Custom timeout and parallelism
Search for log files with a 5-minute timeout and limited parallelism.

### Example 8

```powershell
Get-ChildItem -Path "C:\Logs" | Find-Item -Content "error"

# Short form:
ls C:\Logs | l -matchcontent "error"
```

Pipeline-invoer
Geef bestandspaden van Get-ChildItem door om te zoeken naar bestanden met 'error'.

### Example 9

```powershell
Find-Item "*.txt" -MaxRecursionDepth 2

# Short form:
l *.txt -maxdepth 2
```

Beperk de recursiediepte
Zoek naar tekstbestanden maar beperk recursie tot 2 mapniveaus.

### Example 10

```powershell
Find-Item -MinFileSize 1048576 -MaxFileSize 10485760

# Short form:
l -minsize 1048576 -maxsize 10485760
```

Filter op bestandsgrootte
Zoek bestanden groter dan 1MB maar kleiner dan 10MB.

### Example 11

```powershell
Find-Item -ModifiedAfter "2025-01-01"

# Short form:
l -after "2025-01-01"
```

Filteren op wijzigingsdatum
Vind bestanden die zijn gewijzigd na 1 januari 2025.

### Example 12

```powershell
Find-Item -Exclude "*.tmp", "*\bin\*"

# Short form:
l -skiplike "*.tmp", "*\bin\*"
```

Specifieke patronen uitsluiten
Zoek naar alle bestanden, maar sluit tijdelijke bestanden en bin-mappen uit.

### Example 13

```powershell
Find-Item "*.docx" -SearchDrives "C:\", "D:\"

# Short form:
l *.docx -drives C:\, D:\
```

Zoek op specifieke schijven
Zoek naar .docx-bestanden op alleen C: en D: schijven.

### Example 14

```powershell
Find-Item -Content "Error" -CaseSensitive

# Short form:
l -mc "Error" -CaseSensitive
```

Hoofdlettergevoelige inhoudszoekopdracht
Zoek naar bestanden die "Error" (hoofdlettergevoelig) in hun inhoud bevatten.

### Example 15

```powershell
Find-Item -IncludeAlternateFileStreams -SearchADSContent -Content "secret"

# Short form:
l -ads -sads -mc "secret"
```

Zoek naar inhoud van alternatieve datastromen
Zoek naar bestanden met alternatieve datastromen die "geheim" bevatten.

### Example 16

```powershell
Find-Item "*.ps1" -Content "function" -AllMatches

# Short form:
l *.ps1 -mc "function" -AllMatches
```

Vind alle overeenkomsten per regel
Zoek naar alle voorkomens van "function" in elke regel, niet alleen de eerste overeenkomst.

### Example 17

```powershell
Find-Item "*.log" -Content "error" -Context 2,3

# Short form:
l *.log -mc "error" -Context 2,3
```

Toon context rond overeenkomsten
Toon 2 regels voor en 3 regels na elke overeenkomst voor een beter begrip.

### Example 18

```powershell
Find-Item "*.txt" -Content "TODO:.*" -Raw

# Short form:
l *.txt -mc "TODO:.*" -Raw
```

Get only matching strings
Return just the matching text strings instead of full match objects.

### Example 19

```powershell
Find-Item "*.config" -Content "database" -Quiet

# Short form:
l *.config -mc "database" -Quiet
```

Eenvoudige boolean controle
Retourneer waar/onwaar in plaats van overeenkomstdetails om te controleren of een patroon bestaat.

### Example 20

```powershell
Find-Item "*.cs" -Content "class.*Controller" -List

# Short form:
l *.cs -mc "class.*Controller" -List
```

Per bestand alleen de eerste overeenkomst vinden
Stop bij de eerste overeenkomst in elk bestand voor efficiënt bestandenlijsten.

### Example 21

```powershell
Find-Item "*.txt" -Content "$variable[0]" -SimpleMatch

# Short form:
l *.txt -mc "$variable[0]" -SimpleMatch
```

Letterlijke string matching
Zoek naar exacte tekst zonder regex-interpretatie met behulp van SimpleMatch.

### Example 22

```powershell
Find-Item "*.js" -Content "console\.log" -NotMatch

# Short form:
l *.js -mc "console\.log" -NotMatch
```

Bestanden die NIET overeenkomen met patroon
Gebruik NotMatch om bestanden te vinden die het opgegeven patroon niet bevatten.

### Example 23

```powershell
Find-Item "*.txt" -Content "café" -Encoding UTF8

# Short form:
l *.txt -mc "café" -Encoding UTF8
```

Specificeer bestandscodering
Zoek bestanden met specifieke codering voor nauwkeurige tekstverwerking.

### Example 24

```powershell
Find-Item "*.txt" -Content "Müller" -SimpleMatch -Culture "de-DE"

# Short form:
l *.txt -mc "Müller" -SimpleMatch -Culture "de-DE"
```

Cultural text comparison
Use culture-specific matching with SimpleMatch for international text.

### Example 25

```powershell
Find-Item "*.log" -Content "exception" -MinFileSize 1024 -ModifiedAfter "2025-01-01" -MaxRecursionDepth 3

# Short form:
l *.log -mc "exception" -minsize 1024 -after "2025-01-01" -maxdepth 3
```

Complexe inhoudszoekopdracht met bestandsfilters
Combineer bestandsgrootte, datum en inhoudsfilters voor nauwkeurige zoekopdrachten.

## Related Links

- [Find-Item on GitHub](https://github.com/genXdev/genXdev)
