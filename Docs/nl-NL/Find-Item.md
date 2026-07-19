# Find-Item

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** `l

## Synopsis

> [NL] Zoek naar bestanden en mappen met geavanceerde filteropties.

## Description

* Bestanden zoeken met Find-Item -> l
        * Snelle multi-threaded zoekopdracht: maakt gebruik van parallelle en asynchrone
              IO-verwerking met configureerbare maximale parallelliteitsgraad
              (standaard op basis van CPU-kernen) voor efficiënt scannen van bestanden en mappen.
        * Geavanceerd patroonherkenning: Ondersteunt jokertekens (*, ?), recursieve patronen
              zoals **, en complexe padstructuren voor precieze bestands- en mapquery's.
              **/bestandsnaam zal alleen recursief zoeken totdat bestandsnaam is gevonden. Meerdere van deze
              patronen zijn toegestaan, zolang ze worden voorafgegaan door een bestandsnaam of
              mapnaam om te matchen.
              Deze patroonparser heeft de kracht van Resolve-Path maar heeft recursie
              functies, en ondersteunt alleen * en ? als jokertekens,
              waardoor bugs met paden met [ ]-haakjes worden voorkomen, wat de
              noodzaak van de parameter -LiteralPath elimineert, terwijl de integriteit
              van padgedeelten zonder jokertekens behouden blijft, in tegenstelling tot een jokertekenmatch op de
              volledige pad.
        * Verbeterd zoeken in inhoud: Uitgebreide integratie van Select-String
              met reguliere expressiepatronen in bestandsinhoud met behulp van de
              parameter -Content.
            * Optimalisatie voor grote bestanden: Verwerkt extreem grote bestanden met slimme
                  overlappende buffers en minimale heap-toewijzing
            * Meerdere matchopties: Vind alle overeenkomsten per regel (-AllMatches) of
                  alleen de eerste match per bestand (-List)
            * Hoofdlettergevoeligheidscontrole: Hoofdlettergevoelig matchen (-CaseSensitive)
                  met cultuurspecifieke opties (-Culture)
            * Context vastleggen: Toon regels voor en na matches (-Context) voor
                  beter begrip
            *Omgekeerd matchen: Vind bestanden die het patroon niet bevatten (-NotMatch)
            * Uitvoerformaten: Ruwe stringuitvoer (-Raw), stille booleaanse respons (-Quiet),
                  of volledige MatchInfo-objecten
            * Patroontypen: Reguliere expressies (standaard) of eenvoudig letterlijk string
                  matchen (-SimpleMatch)
            * Codering ondersteuning: Specificeer bestandscodering (-Encoding) voor nauwkeurige tekstverwerking
        * Flexibiliteit in padtype: Verwerkt relatieve, absolute, UNC-, geroote paden en
              NTFS alternatieve datastromen (ADS) met optioneel zoeken in inhoud van stromen.
        * Ondersteuning voor meerdere schijven: Zoekt op alle schijven met -AllDrives of specifieke
              schijven via -SearchDrives, inclusief optische schijven indien gespecificeerd.
        * Map- en bestandsfiltering: Opties om alleen mappen te doorzoeken (-Directory),
              zowel bestanden als mappen (-FilesAndDirectories), of bestanden met overeenkomende inhoud.
        * Uitsluitingen en limieten: Uitsluitingspatronen met -Exclude, stel maximale recursiediepte in
              (-MaxRecursionDepth), bestandsgroottebeperkingen (-MaxFileSize, -MinFileSize), en gewijzigde
              datumfilters (-ModifiedAfter, -ModifiedBefore).
        * Aanpassing van uitvoer: Ondersteunt PassThru voor FileInfo/DirectoryInfo-objecten,
              relatieve paden, hyperlinks in interactieve modus, of gewone paden in niet-interactieve modus
              (gebruik -NoLinks bij problemen om de niet-interactieve modus af te dwingen).
        * Prestatieoptimalisaties: Slaat standaard niet-tekstbestanden over voor zoeken in inhoud
              (overschrijven met -IncludeNonTextFileMatching), verwerkt lange paden (>260 tekens),
              en volgt symlinks/junctions.
        * Veiligheidsfuncties: Time-out ondersteuning (-TimeoutSeconds), negeert ontoegankelijke items,
              slaat systeemattributen standaard over en voorkomt oneindige lussen met registratie van bezochte knooppunten.

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

Vind bestanden die een specifiek woord bevatten
Zoek naar alle bestanden in de huidige map en submappen die het woord "vertaling" bevatten.

### Example 2

```powershell
Find-Item "*.js" "Version == `"\d\d?\.\d\d?\.\d\d?`""

# Short form:
l *.js "Version == `"\d\d?\.\d\d?\.\d\d?`""
```

Zoek JavaScript-bestanden met een versietekenreeks
Zoek naar JavaScript-bestanden die een versietekenreeks bevatten in de indeling "Version == `x.y.z`".

### Example 3

```powershell
Find-Item -Directory

# Short form:
l -dir
```

List alle mappen
Vind alle mappen in de huidige map en de submappen.

### Example 4

```powershell
Find-Item ".\*.xml" -PassThru | % FullName

# Short form:
l *.xml -pt | % FullName
```

Zoek XML-bestanden en geef objecten door
Zoek naar alle .xml-bestanden en geef de resultaten als objecten door via de pijplijn.

### Example 5

```powershell
Find-Item -IncludeAlternateFileStreams

# Short form:
l -ads
```

Alternatieve gegevensstromen opnemen
Zoek naar alle bestanden en neem hun alternatieve gegevensstromen op in de resultaten.

### Example 6

```powershell
Find-Item "*.pdf" -AllDrives

# Short form:
l *.pdf -alldrives
```

Zoeken op alle schijven
Zoek naar alle PDF-bestanden op alle beschikbare schijven.

### Example 7

```powershell
Find-Item "*.log" -TimeoutSeconds 300 -MaxDegreeOfParallelism 4

# Short form:
l *.log -maxseconds 300 -threads 4
```

Aangepaste time-out en parallelliteit
Doorzoek logbestanden met een time-out van 5 minuten en beperkte parallelliteit.

### Example 8

```powershell
Get-ChildItem -Path "C:\Logs" | Find-Item -Content "error"

# Short form:
ls C:\Logs | l -matchcontent "error"
```

Pipeline-invoer
Geef bestandspaden van Get-ChildItem door om te zoeken naar bestanden die 'error' bevatten.

### Example 9

```powershell
Find-Item "*.txt" -MaxRecursionDepth 2

# Short form:
l *.txt -maxdepth 2
```

Beperk recursiediepte
Zoek naar tekstbestanden maar beperk recursie tot 2 directoryniveaus.

### Example 10

```powershell
Find-Item -MinFileSize 1048576 -MaxFileSize 10485760

# Short form:
l -minsize 1048576 -maxsize 10485760
```

Filter op bestandsgrootte
Zoek bestanden groter dan 1 MB maar kleiner dan 10 MB.

### Example 11

```powershell
Find-Item -ModifiedAfter "2025-01-01"

# Short form:
l -after "2025-01-01"
```

Filteren op wijzigingsdatum
Vind bestanden gewijzigd na 1 januari 2025.

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

Zoek specifieke stations
Zoek naar .docx-bestanden alleen op C: en D:.

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
Zoek naar bestanden met alternatieve datastromen die "secret" bevatten.

### Example 16

```powershell
Find-Item "*.ps1" -Content "function" -AllMatches

# Short form:
l *.ps1 -mc "function" -AllMatches
```

Zoek alle overeenkomsten per regel
Zoek naar alle voorkomens van "function" in elke regel, niet alleen de eerste overeenkomst.

### Example 17

```powershell
Find-Item "*.log" -Content "error" -Context 2,3

# Short form:
l *.log -mc "error" -Context 2,3
```

Toon context rond overeenkomsten
Geef 2 regels vóór en 3 regels na elke overeenkomst weer voor een beter begrip.

### Example 18

```powershell
Find-Item "*.txt" -Content "TODO:.*" -Raw

# Short form:
l *.txt -mc "TODO:.*" -Raw
```

Alleen overeenkomende strings ophalen
Geef alleen de overeenkomende tekstreeksen terug in plaats van volledige matchobjecten.

### Example 19

```powershell
Find-Item "*.config" -Content "database" -Quiet

# Short form:
l *.config -mc "database" -Quiet
```

Eenvoudige booleaanse controle
Retourneer waar/onwaar in plaats van matchdetails om te controleren of een patroon bestaat.

### Example 20

```powershell
Find-Item "*.cs" -Content "class.*Controller" -List

# Short form:
l *.cs -mc "class.*Controller" -List
```

Zoek alleen de eerste overeenkomst per bestand
Stop bij de eerste overeenkomst in elk bestand voor een efficiënte bestandslijst.

### Example 21

```powershell
Find-Item "*.txt" -Content "$variable[0]" -SimpleMatch

# Short form:
l *.txt -mc "$variable[0]" -SimpleMatch
```

Letterlijke tekenreeks match
Zoek naar exacte tekst zonder regex-interpretatie met behulp van SimpleMatch.

### Example 22

```powershell
Find-Item "*.js" -Content "console\.log" -NotMatch

# Short form:
l *.js -mc "console\.log" -NotMatch
```

Bestanden vinden die NIET het patroon bevatten
Gebruik NotMatch om bestanden te vinden die het opgegeven patroon niet bevatten.

### Example 23

```powershell
Find-Item "*.txt" -Content "café" -Encoding UTF8

# Short form:
l *.txt -mc "café" -Encoding UTF8
```

Specificeer bestandscodering
Doorzoek bestanden met specifieke codering voor nauwkeurige tekstverwerking.

### Example 24

```powershell
Find-Item "*.txt" -Content "Müller" -SimpleMatch -Culture "de-DE"

# Short form:
l *.txt -mc "Müller" -SimpleMatch -Culture "de-DE"
```

Culturele tekstvergelijking
Gebruik cultuurspecifieke matching met SimpleMatch voor internationale tekst.

### Example 25

```powershell
Find-Item "*.log" -Content "exception" -MinFileSize 1024 -ModifiedAfter "2025-01-01" -MaxRecursionDepth 3

# Short form:
l *.log -mc "exception" -minsize 1024 -after "2025-01-01" -maxdepth 3
```

Geavanceerd zoeken met bestandsfilters
Combineer bestandsgrootte, datum en inhoudsfilters voor nauwkeurige zoekopdrachten.

## Related Links

- [Find-Item on GitHub](https://github.com/genXdev/genXdev)
