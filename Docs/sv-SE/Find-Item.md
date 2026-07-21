# Find-Item

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** `l`

## Synopsis

> Sök efter filer och kataloger med avancerade filtreringsalternativ.

## Syntax

```powershell
Find-Item [[-Name] <String[]>] [[-RelativeBasePath] <String>] [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-Directory] [-DriveLetter <Char[]>] [-Exclude <String[]>] [-FilesAndDirectories] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-Input <Object>] [-LimitToRoot] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-ModifiedBefore <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-NoLinks] [-NoRecurse] [-PassThru] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [<CommonParameters>]

Find-Item [[-Content] <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>] [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Quiet] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | — | Filnamn eller mönster att söka efter. Standard är '*'. 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | Filnamn eller mönster att söka efter. Standard är '*'. 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | — | Regex-mönster för att söka i innehåll *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 2 | — | Grundsökväg för att lösa relativa sökvägar i utdata |
| `-Category` | String[] | — | — | Named | — | The `-Category` parameter. |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Maximal grad av parallellism för kataloguppgifter |
| `-TimeoutSeconds` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Valfritt: timeout för annullering i sekunder |
| `-AllDrives` | SwitchParameter | — | — | Named | `False` | Sök över alla tillgängliga enheter |
| `-Directory` | SwitchParameter | — | — | Named | `False` | Sök endast efter kataloger |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | `False` | Inkludera både filer och kataloger |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Hej, världen! |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | `False` | Inkludera alternativa dataströmmar i sökresultat |
| `-NoRecurse` | SwitchParameter | — | — | Named | `False` | Gå inte in i underkataloger rekursivt |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | `False` | Följ symboliska länkar och korsningspunkter under kataloggenomgång. |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | `False` | Inkludera optiska diskenheter |
| `-SearchDrives` | String[] | — | — | Named | — | Valfritt: sök på specifika enheter |
| `-DriveLetter` | Char[] | — | — | Named | — | Valfritt: sök på specifika enheter |
| `-Root` | String[] | — | — | Named | — | Alternativt: sök i specifika kataloger |
| `-LimitToRoot` | SwitchParameter | — | — | Named | `False` | Tvingar sökning endast i rotkataloger genom att ta bort katalogkomponenter från Namnindata |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | `False` | Inkludera icke-textfiler vid sökning av filinnehåll |
| `-NoLinks` | SwitchParameter | — | — | Named | `False` | Framtvingar obevakat läge och genererar inga länkar |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `PlatformDefault` | Hämtar eller anger skiftlägeskänsligheten för filer och kataloger |
| `-SearchADSContent` | SwitchParameter | — | — | Named | `False` | När inställd, utför innehållssökning inom alternativa dataströmmar (ADS). När inte inställd, utmatar ADS-filinfo utan att söka deras innehåll. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Maximalt rekursionsdjup för kataloggenomgång. 0 betyder obegränsat. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Maximal rekursionsdjup för att fortsätta söka uppåt i trädet för relativa sökningar, medan inga objekt hittas. 0 betyder inaktiverad. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Maximal filstorlek i bytes som ska inkluderas i resultaten. 0 betyder obegränsat. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Minsta filstorlek i byte som ska inkluderas i resultaten. 0 innebär inget minimum. |
| `-ModifiedAfter` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Inkludera endast filer som har ändrats efter denna datum/tid (UTC). |
| `-ModifiedBefore` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Inkludera endast filer som ändrats före detta datum/tid (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `None` | Filattribut att hoppa över (t.ex. System, Dold eller Ingen). |
| `-Exclude` | String[] | — | — | Named | — | Uteslut filer eller kataloger som matchar dessa jokerteckenmönster (t.ex., *.tmp, *\bin\*). |
| `-AllMatches` | SwitchParameter | — | — | Named | `False` | Anger att cmdleten söker efter mer än en träff på varje textrad. Utan denna parameter hittar Select-String endast den första träffen på varje textrad. *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | `False` | Anger att cmdlet-matchningar är skiftlägeskänsliga. Som standard är matchningar inte skiftlägeskänsliga. *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | Fångar det angivna antalet rader före och efter raden som matchar mönstret. *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Anger ett kulturnamn som matchar det angivna mönstret. Parametern Kultur måste användas tillsammans med parametern SimpleMatch. Standardbeteendet använder kulturen för den aktuella PowerShell-runspace (sessionen). *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | — | Anger kodningstypen för målfilen. Stöder Select-String-kompatibla värden och utökade .NET-kodningar. *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | `False` | Endast den första förekomsten av matchande text returneras från varje indatafil. Detta är det mest effektiva sättet att hämta en lista över filer som har innehåll som matchar det reguljära uttrycket. *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | `False` | Inaktiverar markering av matchande strängar i utdata. *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | `False` | Parametern NotMatch söker efter text som inte matchar det angivna mönstret. *(Parameter set: )* |
| `-Quiet` | SwitchParameter | — | — | Named | `False` | Anger att cmdleten returnerar ett enkelt svar istället för ett MatchInfo-objekt. Det returnerade värdet är $true om mönstret hittas eller $null om mönstret inte hittas. *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | `False` | Gör att cmdleten endast matar ut de matchande strängarna, snarare än MatchInfo-objekt. Detta resulterar i ett beteende som mest liknar Unix grep eller Windows findstr.exe-kommandon. *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | `False` | Anger att cmdleten använder en enkel matchning i stället för en matchning med reguljära uttryck. I en enkel matchning söker Select-String i indata efter texten i parametern Pattern. Det tolkar inte värdet för parametern Pattern som ett reguljärt uttryck. *(Parameter set: )* |

## Examples

### Example 1

```powershell
Find-Item -Content "translation"

# Short form:
l -mc translation
```

Hitta filer som innehåller ett specifikt ord
Sök efter alla filer i den aktuella katalogen och dess underkataloger som innehåller ordet "translation".

### Example 2

```powershell
Find-Item "*.js" "Version == `"\d\d?\.\d\d?\.\d\d?`""

# Short form:
l *.js "Version == `"\d\d?\.\d\d?\.\d\d?`""
```

Hitta JavaScript-filer med en versionssträng
Sök efter JavaScript-filer som innehåller en versionssträng i formatet "Version == `x.y.z`".

### Example 3

```powershell
Find-Item -Directory

# Short form:
l -dir
```

Lista alla kataloger
Hitta alla kataloger i den aktuella katalogen och dess underkataloger.

### Example 4

```powershell
Find-Item ".\*.xml" -PassThru | % FullName

# Short form:
l *.xml -pt | % FullName
```

Hitta XML-filer och skicka objekt
Sök efter alla .xml-filer och skicka resultaten som objekt genom pipelinen.

### Example 5

```powershell
Find-Item -IncludeAlternateFileStreams

# Short form:
l -ads
```

Inkludera alternativa dataströmmar
Sök efter alla filer och inkludera deras alternativa dataströmmar i resultaten.

### Example 6

```powershell
Find-Item "*.pdf" -AllDrives

# Short form:
l *.pdf -alldrives
```

Sök på alla enheter
Sök efter alla PDF-filer på alla tillgängliga enheter.

### Example 7

```powershell
Find-Item "*.log" -TimeoutSeconds 300 -MaxDegreeOfParallelism 4

# Short form:
l *.log -maxseconds 300 -threads 4
```

Anpassad tidsgräns och parallellism
Sök efter loggfiler med en tidsgräns på 5 minuter och begränsad parallellism.

### Example 8

```powershell
Get-ChildItem -Path "C:\Logs" | Find-Item -Content "error"

# Short form:
ls C:\Logs | l -matchcontent "error"
```

Indata från pipeline
Skicka filsökvägar från Get-ChildItem för att söka efter filer som innehåller "error".

### Example 9

```powershell
Find-Item "*.txt" -MaxRecursionDepth 2

# Short form:
l *.txt -maxdepth 2
```

Begränsa rekursionsdjup
Sök efter textfiler men begränsa rekursionen till 2 katalognivåer.

### Example 10

```powershell
Find-Item -MinFileSize 1048576 -MaxFileSize 10485760

# Short form:
l -minsize 1048576 -maxsize 10485760
```

Filtrera efter filstorlek
Hitta filer större än 1 MB men mindre än 10 MB.

### Example 11

```powershell
Find-Item -ModifiedAfter "2025-01-01"

# Short form:
l -after "2025-01-01"
```

Filtrera efter ändringsdatum
Hitta filer som ändrats efter 1 januari 2025.

### Example 12

```powershell
Find-Item -Exclude "*.tmp", "*\bin\*"

# Short form:
l -skiplike "*.tmp", "*\bin\*"
```

Uteslut specifika mönster
Sök efter alla filer men uteslut temporära filer och bin-kataloger.

### Example 13

```powershell
Find-Item "*.docx" -SearchDrives "C:\", "D:\"

# Short form:
l *.docx -drives C:\, D:\
```

Sökning på specifika enheter
Sök efter .docx-filer endast på C:- och D:-enheterna.

### Example 14

```powershell
Find-Item -Content "Error" -CaseSensitive

# Short form:
l -mc "Error" -CaseSensitive
```

Skiftlägeskänslig innehållssökning
Sök efter filer som innehåller "Error" (skiftlägeskänsligt) i sitt innehåll.

### Example 15

```powershell
Find-Item -IncludeAlternateFileStreams -SearchADSContent -Content "secret"

# Short form:
l -ads -sads -mc "secret"
```

Sök efter alternativ dataströmsinnehåll
Sök efter filer med alternativa dataströmmar som innehåller "hemlig".

### Example 16

```powershell
Find-Item "*.ps1" -Content "function" -AllMatches

# Short form:
l *.ps1 -mc "function" -AllMatches
```

Hitta alla träffar per rad
Sök efter alla förekomster av "function" på varje rad, inte bara den första träffen.

### Example 17

```powershell
Find-Item "*.log" -Content "error" -Context 2,3

# Short form:
l *.log -mc "error" -Context 2,3
```

@{response=Visa sammanhang runt träffar
Visa 2 rader före och 3 rader efter varje träff för bättre förståelse.}

### Example 18

```powershell
Find-Item "*.txt" -Content "TODO:.*" -Raw

# Short form:
l *.txt -mc "TODO:.*" -Raw
```

Hämta endast matchande strängar
Returnera endast de matchande textsträngarna istället för fullständiga matchningsobjekt.

### Example 19

```powershell
Find-Item "*.config" -Content "database" -Quiet

# Short form:
l *.config -mc "database" -Quiet
```

@{response=Enkel boolesk kontroll
Returnera sant/falskt istället för detaljer om matchningen för att kontrollera om mönstret finns.}

### Example 20

```powershell
Find-Item "*.cs" -Content "class.*Controller" -List

# Short form:
l *.cs -mc "class.*Controller" -List
```

Hitta endast första träffen per fil
Stanna vid första träffen i varje fil för effektiv fillistning.

### Example 21

```powershell
Find-Item "*.txt" -Content "$variable[0]" -SimpleMatch

# Short form:
l *.txt -mc "$variable[0]" -SimpleMatch
```

Bokstavlig strängmatchning
Sök efter exakt text utan regex-tolkning med SimpleMatch.

### Example 22

```powershell
Find-Item "*.js" -Content "console\.log" -NotMatch

# Short form:
l *.js -mc "console\.log" -NotMatch
```

Hitta filer som INTE innehåller mönster
Använd NotMatch för att hitta filer som inte innehåller det angivna mönstret.

### Example 23

```powershell
Find-Item "*.txt" -Content "café" -Encoding UTF8

# Short form:
l *.txt -mc "café" -Encoding UTF8
```

Ange filkodning
Sök efter filer med specifik kodning för korrekt textbehandling.

### Example 24

```powershell
Find-Item "*.txt" -Content "Müller" -SimpleMatch -Culture "de-DE"

# Short form:
l *.txt -mc "Müller" -SimpleMatch -Culture "de-DE"
```

Jämförelse av kulturspecifik text
Använd kulturanpassad matchning med SimpleMatch för internationell text.

### Example 25

```powershell
Find-Item "*.log" -Content "exception" -MinFileSize 1024 -ModifiedAfter "2025-01-01" -MaxRecursionDepth 3

# Short form:
l *.log -mc "exception" -minsize 1024 -after "2025-01-01" -maxdepth 3
```

Komplex innehållssökning med filfilter
Kombinera filtrering efter filstorlek, datum och innehåll för precisa sökningar.

## Parameter Details

### `-Name <String[]>`

> Filnamn eller mönster att söka efter. Standard är '*'.

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

> Filnamn eller mönster att söka efter. Standard är '*'.

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

> Regex-mönster för att söka i innehåll

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

> Grundsökväg för att lösa relativa sökvägar i utdata

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

> Maximal grad av parallellism för kataloguppgifter

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

> Valfritt: timeout för annullering i sekunder

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

> Sök över alla tillgängliga enheter

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

> Sök endast efter kataloger

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

> Inkludera både filer och kataloger

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

> Hej, världen!

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

> Inkludera alternativa dataströmmar i sökresultat

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

> Gå inte in i underkataloger rekursivt

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

> Följ symboliska länkar och korsningspunkter under kataloggenomgång.

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

> Inkludera optiska diskenheter

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

> Valfritt: sök på specifika enheter

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

> Valfritt: sök på specifika enheter

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

> Alternativt: sök i specifika kataloger

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

> Tvingar sökning endast i rotkataloger genom att ta bort katalogkomponenter från Namnindata

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

> Inkludera icke-textfiler vid sökning av filinnehåll

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

> Framtvingar obevakat läge och genererar inga länkar

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

> Hämtar eller anger skiftlägeskänsligheten för filer och kataloger

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

> När inställd, utför innehållssökning inom alternativa dataströmmar (ADS). När inte inställd, utmatar ADS-filinfo utan att söka deras innehåll.

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

> Maximalt rekursionsdjup för kataloggenomgång. 0 betyder obegränsat.

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

> Maximal rekursionsdjup för att fortsätta söka uppåt i trädet för relativa sökningar, medan inga objekt hittas. 0 betyder inaktiverad.

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

> Maximal filstorlek i bytes som ska inkluderas i resultaten. 0 betyder obegränsat.

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

> Minsta filstorlek i byte som ska inkluderas i resultaten. 0 innebär inget minimum.

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

> Inkludera endast filer som har ändrats efter denna datum/tid (UTC).

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

> Inkludera endast filer som ändrats före detta datum/tid (UTC).

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

> Filattribut att hoppa över (t.ex. System, Dold eller Ingen).

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

> Uteslut filer eller kataloger som matchar dessa jokerteckenmönster (t.ex., *.tmp, *\bin\*).

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

> Anger att cmdleten söker efter mer än en träff på varje textrad. Utan denna parameter hittar Select-String endast den första träffen på varje textrad.

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

> Anger att cmdlet-matchningar är skiftlägeskänsliga. Som standard är matchningar inte skiftlägeskänsliga.

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

> Fångar det angivna antalet rader före och efter raden som matchar mönstret.

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

> Anger ett kulturnamn som matchar det angivna mönstret. Parametern Kultur måste användas tillsammans med parametern SimpleMatch. Standardbeteendet använder kulturen för den aktuella PowerShell-runspace (sessionen).

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

> Anger kodningstypen för målfilen. Stöder Select-String-kompatibla värden och utökade .NET-kodningar.

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

> Endast den första förekomsten av matchande text returneras från varje indatafil. Detta är det mest effektiva sättet att hämta en lista över filer som har innehåll som matchar det reguljära uttrycket.

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

> Inaktiverar markering av matchande strängar i utdata.

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

> Parametern NotMatch söker efter text som inte matchar det angivna mönstret.

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

> Anger att cmdleten returnerar ett enkelt svar istället för ett MatchInfo-objekt. Det returnerade värdet är $true om mönstret hittas eller $null om mönstret inte hittas.

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

> Gör att cmdleten endast matar ut de matchande strängarna, snarare än MatchInfo-objekt. Detta resulterar i ett beteende som mest liknar Unix grep eller Windows findstr.exe-kommandon.

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

> Anger att cmdleten använder en enkel matchning i stället för en matchning med reguljära uttryck. I en enkel matchning söker Select-String i indata efter texten i parametern Pattern. Det tolkar inte värdet för parametern Pattern som ett reguljärt uttryck.

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

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Find-DuplicateFiles.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Remove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Rename-InProject.md)
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Write-TextFileAtomic.md)
