# Find-Item

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** `l`

## Synopsis

> Zoek naar bestanden en mappen met geavanceerde filteropties.

## Description

```text
* Bestanden vinden met Find-Item -> l
        * Snelle multi-threaded zoekopdracht: maakt gebruik van parallelle en asynchrone
              IO-verwerking met configureerbare maximale mate van parallellisme
              (standaard gebaseerd op CPU-kernen) voor efficiënt scannen van bestanden en mappen.
        * Geavanceerd patroonherkenning: Ondersteunt jokertekens (*, ?), recursieve patronen
              zoals **, en complexe padstructuren voor nauwkeurige bestands- en mapquery's.
              **/bestandsnaam zal alleen recursief zoeken totdat de bestandsnaam is gevonden. Meerdere van deze
              patronen zijn toegestaan, zolang ze worden voorafgegaan door een bestandsnaam of
              mapnaam om te matchen.
              Deze patroonparser heeft de kracht van Resolve-Path maar heeft recursieve
              functies, en ondersteunt alleen * en ? als jokertekens,
              waardoor bugs met paden met [ ]-haakjes worden voorkomen, en de noodzaak voor
              de -LiteralPath-parameter wordt geëlimineerd, terwijl de integriteit wordt behouden
              voor padsecties zonder jokertekens, in tegenstelling tot een jokertekenmatch op het
              volledige pad.
        * Uitgebreid inhoud zoeken: Uitgebreide Select-String-integratie
              met reguliere-expressiepatronen in bestandsinhoud met behulp van de
              -Content-parameter.
            * Optimalisatie voor grote bestanden: Verwerkt extreem grote bestanden met slimme
                  overlappende buffers en minimale heap-toewijzing
            * Meerdere zoekopties: Vind alle overeenkomsten per regel (-AllMatches) of
                  alleen de eerste overeenkomst per bestand (-List)
            * Hoofdlettergevoeligheidscontrole: Hoofdlettergevoelig matchen (-CaseSensitive)
                  met cultuurspecifieke opties (-Culture)
            * Context vastleggen: Toon regels voor en na overeenkomsten (-Context) voor
                  een beter begrip
            * Inverse matching: Vind bestanden die het patroon niet bevatten (-NotMatch)
            * Uitvoerformaten: Ruwe tekenreeksuitvoer (-Raw), stille booleaanse respons (-Quiet),
                  of volledige MatchInfo-objecten
            * Patroontypen: Reguliere expressies (standaard) of eenvoudige letterlijke tekenreeks
                  matching (-SimpleMatch)
            * Encoderingsondersteuning: Specificeer bestandscodering (-Encoding) voor accurate tekst
                  verwerking
        * Padvrijheid: Verwerkt relatieve, absolute, UNC-, gewortelde paden, en
              NTFS-alternatieve datastromen (ADS) met optionele inhoudszoekopdracht in stromen.
        * Multi-station ondersteuning: Zoekt op alle stations met -AllDrives of specifieke
              stations via -SearchDrives, inclusief optische schijven indien opgegeven.
        * Directory- en bestandsfiltering: Opties om alleen mappen te doorzoeken (-Directory),
              zowel bestanden als mappen (-FilesAndDirectories), of bestanden met inhoudsovereenkomst.
        * Uitsluiting en limieten: Uitsluitingspatronen met -Exclude, maximale recursiediepte instellen
              (-MaxRecursionDepth), bestandsgroottebeperkingen (-MaxFileSize, -MinFileSize), en aangepaste
              datumfilters (-ModifiedAfter, -ModifiedBefore).
        * Uitvoeraanpassing: Ondersteunt PassThru voor FileInfo/DirectoryInfo-objecten,
              relatieve paden, hyperlinks in bewaakte modus, of gewone paden in onbewaakte modus
              (gebruik -NoLinks bij ongelukken om de onbewaakte modus af te dwingen).
        * Prestatieoptimalisaties: Slaat standaard niet-tekstbestanden over voor inhoudszoekopdrachten
              (overschrijven met -IncludeNonTextFileMatching), verwerkt lange paden (>260 tekens),
              en volgt symlinks/juncties.
        * Veiligheidsfuncties: Timeout-ondersteuning (-TimeoutSeconds), negeert ontoegankelijke items,
              slaat systeemattributen standaard over, en voorkomt oneindige lussen met bijgehouden knooppuntregistratie.

        * Geldige categorieën voor de -Category-parameter zijn: Afbeeldingen, Video's, Muziek, Documenten, Spreadsheets, Presentaties, Archieven, Installatieprogramma's, Uitvoerbare bestanden, Databases, Ontwerpbestanden, Ebooks, Ondertitels, Lettertypen, E-mailbestanden, 3D-modellen, Game-assets, Medische bestanden, Financiële bestanden, Juridische bestanden, Broncode, Scripts, Opmaak en gegevens, Configuratie, Logboeken, Tekstbestanden, Webbestanden, Muziekteksten en akkoorden, Creatief schrijven, Recepten, Onderzoeksbestanden
```
## Syntax

```powershell
Find-Item [[-Name] <String[]>] [[-RelativeBasePath] <String>] [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-Directory] [-DriveLetter <Char[]>] [-Exclude <String[]>] [-FilesAndDirectories] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-Input <Object>] [-LimitToRoot] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-ModifiedBefore <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-NoLinks] [-NoRecurse] [-PassThru] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [<CommonParameters>]

Find-Item [[-Content] <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>] [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Quiet] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | — | Bestandsnaam of patroon om naar te zoeken. Standaard is '*' 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | Bestandsnaam of patroon om naar te zoeken. Standaard is '*' 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | — | Reguliere expressiepatroon om in inhoud te zoeken *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 2 | — | Basispad voor het oplossen van relatieve paden in uitvoer |
| `-Category` | String[] | — | — | Named | — | The `-Category` parameter. |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Maximale mate van parallellisme voor maptaken |
| `-TimeoutSeconds` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Optioneel: time-out in seconden voor annulering |
| `-AllDrives` | SwitchParameter | — | — | Named | `False` | Doorzoek alle beschikbare stations |
| `-Directory` | SwitchParameter | — | — | Named | `False` | Alleen mappen doorzoeken |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | `False` | Omvat zowel bestanden als mappen |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Voer overeenkomende items uit als objecten |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | `False` | Alternatieve gegevensstromen opnemen in zoekresultaten |
| `-NoRecurse` | SwitchParameter | — | — | Named | `False` | Niet recursief in subdirectories gaan |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | `False` | Symlinks en junctions volgen tijdens het doorlopen van mappen |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | `False` | Inclusief optische schijfstations |
| `-SearchDrives` | String[] | — | — | Named | — | Optioneel: specifieke stations doorzoeken |
| `-DriveLetter` | Char[] | — | — | Named | — | Optioneel: specifieke stations doorzoeken |
| `-Root` | String[] | — | — | Named | — | Optioneel: specifieke mappen doorzoeken |
| `-LimitToRoot` | SwitchParameter | — | — | Named | `False` | Dwingt zoeken alleen in Hoofdmappen af door directorycomponenten van Naam-invoeren te verwijderen |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | `False` | Niet-tekstuele bestanden opnemen bij het doorzoeken van bestandsinhoud |
| `-NoLinks` | SwitchParameter | — | — | Named | `False` | Forceert onbemande modus en genereert geen koppelingen |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `PlatformDefault` | Hiermee wordt de hoofdlettergevoeligheid voor bestanden en mappen ingesteld of opgehaald |
| `-SearchADSContent` | SwitchParameter | — | — | Named | `False` | Wanneer ingesteld, wordt inhoudszoekopdracht uitgevoerd binnen alternatieve gegevensstromen (ADS). Wanneer niet ingesteld, wordt ADS-bestandsinformatie weergegeven zonder de inhoud te doorzoeken. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Maximale recursiediepte voor directorytraversatie. 0 betekent onbeperkt. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Maximale recursiediepte voor het verder omhoog zoeken in de boom voor relatieve zoekopdrachten, terwijl geen items worden gevonden. 0 betekent uitgeschakeld. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Maximale bestandsgrootte in bytes die in resultaten wordt opgenomen. 0 betekent onbeperkt. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Minimale bestandsgrootte in bytes om in resultaten op te nemen. 0 betekent geen minimum. |
| `-ModifiedAfter` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Alleen bestanden opnemen die na deze datum/tijd (UTC) zijn gewijzigd. |
| `-ModifiedBefore` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Alleen bestanden opnemen die zijn gewijzigd vóór deze datum/tijd (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `None` | Bestandskenmerken om over te slaan (bijv. Systeem, Verborgen of Geen). |
| `-Exclude` | String[] | — | — | Named | — | Sluit bestanden of mappen uit die overeenkomen met deze jokerpatronen (bijv. *.tmp, *\bin\*). |
| `-AllMatches` | SwitchParameter | — | — | Named | `False` | Geeft aan dat de cmdlet naar meer dan één overeenkomst in elke regel tekst zoekt. Zonder deze parameter vindt Select-String alleen de eerste overeenkomst in elke regel tekst. *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | `False` | Geeft aan dat de overeenkomsten van de cmdlet hoofdlettergevoelig zijn. Standaard zijn overeenkomsten niet hoofdlettergevoelig. *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | Legt het opgegeven aantal regels vast voor en na de regel die overeenkomt met het patroon. *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Specificeert een cultuurnaam die overeenkomt met het opgegeven patroon. De parameter Culture moet worden gebruikt met de parameter SimpleMatch. Het standaardgedrag gebruikt de cultuur van de huidige PowerShell-runspace (sessie). *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | — | Specificeert het type codering voor het doelbestand. Ondersteunt Select-String-compatibele waarden en uitgebreide .NET-coderingen. *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | `False` | Alleen het eerste exemplaar van overeenkomende tekst wordt geretourneerd uit elk invoerbestand. Dit is de meest efficiënte manier om een lijst te krijgen van bestanden waarvan de inhoud overeenkomt met de reguliere expressie. *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | `False` | Schakelt het markeren van overeenkomende tekenreeksen in de uitvoer uit. *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | `False` | De parameter NotMatch vindt tekst die niet overeenkomt met het opgegeven patroon. *(Parameter set: )* |
| `-Quiet` | SwitchParameter | — | — | Named | `False` | Geeft aan dat de cmdlet een eenvoudig antwoord retourneert in plaats van een MatchInfo-object. De geretourneerde waarde is $true als het patroon wordt gevonden of $null als het patroon niet wordt gevonden. *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | `False` | Zorgt ervoor dat de cmdlet alleen de overeenkomende tekenreeksen uitvoert, in plaats van MatchInfo-objecten. Dit resulteert in gedrag dat het meest lijkt op Unix grep of Windows findstr.exe. *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | `False` | Geeft aan dat de cmdlet een eenvoudige overeenkomst gebruikt in plaats van een reguliere expressie-overeenkomst. Bij een eenvoudige overeenkomst doorzoekt Select-String de invoer naar de tekst in de parameter Pattern. Het interpreteert de waarde van de parameter Pattern niet als een reguliere expressie-instructie. *(Parameter set: )* |

## Examples

### Example 1

```powershell
Find-Item -Content "translation"

# Short form:
l -mc translation
```

Bestanden zoeken die een specifiek woord bevatten
Zoek naar alle bestanden in de huidige map en submappen die het woord "vertaling" bevatten.

### Example 2

```powershell
Find-Item "*.js" "Version == `"\d\d?\.\d\d?\.\d\d?`""

# Short form:
l *.js "Version == `"\d\d?\.\d\d?\.\d\d?`""
```

JavaScript-bestanden zoeken met een versietekenreeks
Zoeken naar JavaScript-bestanden met een versietekenreeks in de indeling "Versie == `x.y.z`".

### Example 3

```powershell
Find-Item -Directory

# Short form:
l -dir
```

Alle mappen weergeven
Zoek alle mappen in de huidige map en de bijbehorende submappen.

### Example 4

```powershell
Find-Item ".\*.xml" -PassThru | % FullName

# Short form:
l *.xml -pt | % FullName
```

XML-bestanden zoeken en objecten doorgeven
Zoek naar alle .xml-bestanden en geef de resultaten door als objecten via de pijplijn.

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

Doorzoek alle stations
Zoek naar alle PDF-bestanden op alle beschikbare stations.

### Example 7

```powershell
Find-Item "*.log" -TimeoutSeconds 300 -MaxDegreeOfParallelism 4

# Short form:
l *.log -maxseconds 300 -threads 4
```

Aangepaste time-out en parallellisme
Zoek naar logbestanden met een time-out van 5 minuten en beperkt parallellisme.

### Example 8

```powershell
Get-ChildItem -Path "C:\Logs" | Find-Item -Content "error"

# Short form:
ls C:\Logs | l -matchcontent "error"
```

Pijplijninvoer
Geef bestandspaden door van Get-ChildItem om te zoeken naar bestanden met 'error'.

### Example 9

```powershell
Find-Item "*.txt" -MaxRecursionDepth 2

# Short form:
l *.txt -maxdepth 2
```

Recursiediepte beperken
Zoek naar tekstbestanden maar beperk recursie tot 2 mappeniveaus.

### Example 10

```powershell
Find-Item -MinFileSize 1048576 -MaxFileSize 10485760

# Short form:
l -minsize 1048576 -maxsize 10485760
```

Filter op bestandsgrootte
Vind bestanden groter dan 1 MB maar kleiner dan 10 MB.

### Example 11

```powershell
Find-Item -ModifiedAfter "2025-01-01"

# Short form:
l -after "2025-01-01"
```

Filteren op wijzigingsdatum
Bestanden zoeken die zijn gewijzigd na 1 januari 2025.

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

Specifieke stations doorzoeken
Alleen naar .docx-bestanden zoeken op de stations C: en D:.

### Example 14

```powershell
Find-Item -Content "Error" -CaseSensitive

# Short form:
l -mc "Error" -CaseSensitive
```

Hoofdlettergevoelige inhoudszoekopdracht
Zoek naar bestanden die "Error" (hoofdlettergevoelig) bevatten in hun inhoud.

### Example 15

```powershell
Find-Item -IncludeAlternateFileStreams -SearchADSContent -Content "secret"

# Short form:
l -ads -sads -mc "secret"
```

Doorzoek alternatieve datastroominhoud
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

Alleen overeenkomende tekenreeksen ophalen
Retourneer de overeenkomende teksttekenreeksen in plaats van volledige overeenkomstobjecten.

### Example 19

```powershell
Find-Item "*.config" -Content "database" -Quiet

# Short form:
l *.config -mc "database" -Quiet
```

Eenvoudige booleaanse controle
Retourneer waar/niet waar in plaats van overeenkomstdetails om te controleren of patroon bestaat.

### Example 20

```powershell
Find-Item "*.cs" -Content "class.*Controller" -List

# Short form:
l *.cs -mc "class.*Controller" -List
```

Stop bij de eerste overeenkomst per bestand voor efficiënte bestandsweergave.

### Example 21

```powershell
Find-Item "*.txt" -Content "$variable[0]" -SimpleMatch

# Short form:
l *.txt -mc "$variable[0]" -SimpleMatch
```

Letterlijke tekenreeksovereenkomst
Zoek naar exacte tekst zonder regex-interpretatie met behulp van SimpleMatch.

### Example 22

```powershell
Find-Item "*.js" -Content "console\.log" -NotMatch

# Short form:
l *.js -mc "console\.log" -NotMatch
```

Bestanden vinden die NIET overeenkomen met patroon
Gebruik NotMatch om bestanden te vinden die niet het opgegeven patroon bevatten.

### Example 23

```powershell
Find-Item "*.txt" -Content "café" -Encoding UTF8

# Short form:
l *.txt -mc "café" -Encoding UTF8
```

Bestandscodering opgeven
Zoek naar bestanden met specifieke codering voor nauwkeurige tekstverwerking.

### Example 24

```powershell
Find-Item "*.txt" -Content "Müller" -SimpleMatch -Culture "de-DE"

# Short form:
l *.txt -mc "Müller" -SimpleMatch -Culture "de-DE"
```

Culturele tekstvergelijking
Gebruik cultuurspecifieke overeenkomsten met SimpleMatch voor internationale tekst.

### Example 25

```powershell
Find-Item "*.log" -Content "exception" -MinFileSize 1024 -ModifiedAfter "2025-01-01" -MaxRecursionDepth 3

# Short form:
l *.log -mc "exception" -minsize 1024 -after "2025-01-01" -maxdepth 3
```

Complexe inhoudszoekopdracht met bestandsfilters
Combineer bestandsgrootte, datum en inhoudsfilters voor precieze zoekopdrachten.

## Parameter Details

### `-Name <String[]>`

> Bestandsnaam of patroon om naar te zoeken. Standaard is '*'

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

> Bestandsnaam of patroon om naar te zoeken. Standaard is '*'

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

> Reguliere expressiepatroon om in inhoud te zoeken

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

> Basispad voor het oplossen van relatieve paden in uitvoer

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

> Maximale mate van parallellisme voor maptaken

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

> Optioneel: time-out in seconden voor annulering

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

> Doorzoek alle beschikbare stations

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

> Alleen mappen doorzoeken

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

> Omvat zowel bestanden als mappen

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

> Voer overeenkomende items uit als objecten

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

> Alternatieve gegevensstromen opnemen in zoekresultaten

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

> Niet recursief in subdirectories gaan

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

> Symlinks en junctions volgen tijdens het doorlopen van mappen

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

> Inclusief optische schijfstations

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

> Optioneel: specifieke stations doorzoeken

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

> Optioneel: specifieke stations doorzoeken

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

> Optioneel: specifieke mappen doorzoeken

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

> Dwingt zoeken alleen in Hoofdmappen af door directorycomponenten van Naam-invoeren te verwijderen

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

> Niet-tekstuele bestanden opnemen bij het doorzoeken van bestandsinhoud

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

> Forceert onbemande modus en genereert geen koppelingen

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

> Hiermee wordt de hoofdlettergevoeligheid voor bestanden en mappen ingesteld of opgehaald

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

> Wanneer ingesteld, wordt inhoudszoekopdracht uitgevoerd binnen alternatieve gegevensstromen (ADS). Wanneer niet ingesteld, wordt ADS-bestandsinformatie weergegeven zonder de inhoud te doorzoeken.

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

> Maximale recursiediepte voor directorytraversatie. 0 betekent onbeperkt.

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

> Maximale recursiediepte voor het verder omhoog zoeken in de boom voor relatieve zoekopdrachten, terwijl geen items worden gevonden. 0 betekent uitgeschakeld.

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

> Maximale bestandsgrootte in bytes die in resultaten wordt opgenomen. 0 betekent onbeperkt.

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

> Minimale bestandsgrootte in bytes om in resultaten op te nemen. 0 betekent geen minimum.

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

> Alleen bestanden opnemen die na deze datum/tijd (UTC) zijn gewijzigd.

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

> Alleen bestanden opnemen die zijn gewijzigd vóór deze datum/tijd (UTC).

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

> Bestandskenmerken om over te slaan (bijv. Systeem, Verborgen of Geen).

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

> Sluit bestanden of mappen uit die overeenkomen met deze jokerpatronen (bijv. *.tmp, *\bin\*).

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

> Geeft aan dat de cmdlet naar meer dan één overeenkomst in elke regel tekst zoekt. Zonder deze parameter vindt Select-String alleen de eerste overeenkomst in elke regel tekst.

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

> Geeft aan dat de overeenkomsten van de cmdlet hoofdlettergevoelig zijn. Standaard zijn overeenkomsten niet hoofdlettergevoelig.

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

> Legt het opgegeven aantal regels vast voor en na de regel die overeenkomt met het patroon.

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

> Specificeert een cultuurnaam die overeenkomt met het opgegeven patroon. De parameter Culture moet worden gebruikt met de parameter SimpleMatch. Het standaardgedrag gebruikt de cultuur van de huidige PowerShell-runspace (sessie).

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

> Specificeert het type codering voor het doelbestand. Ondersteunt Select-String-compatibele waarden en uitgebreide .NET-coderingen.

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

> Alleen het eerste exemplaar van overeenkomende tekst wordt geretourneerd uit elk invoerbestand. Dit is de meest efficiënte manier om een lijst te krijgen van bestanden waarvan de inhoud overeenkomt met de reguliere expressie.

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

> Schakelt het markeren van overeenkomende tekenreeksen in de uitvoer uit.

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

> De parameter NotMatch vindt tekst die niet overeenkomt met het opgegeven patroon.

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

> Geeft aan dat de cmdlet een eenvoudig antwoord retourneert in plaats van een MatchInfo-object. De geretourneerde waarde is $true als het patroon wordt gevonden of $null als het patroon niet wordt gevonden.

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

> Zorgt ervoor dat de cmdlet alleen de overeenkomende tekenreeksen uitvoert, in plaats van MatchInfo-objecten. Dit resulteert in gedrag dat het meest lijkt op Unix grep of Windows findstr.exe.

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

> Geeft aan dat de cmdlet een eenvoudige overeenkomst gebruikt in plaats van een reguliere expressie-overeenkomst. Bij een eenvoudige overeenkomst doorzoekt Select-String de invoer naar de tekst in de parameter Pattern. Het interpreteert de waarde van de parameter Pattern niet als een reguliere expressie-instructie.

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

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Find-DuplicateFiles.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Remove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Rename-InProject.md)
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Write-TextFileAtomic.md)
