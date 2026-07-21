# Find-Item

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** `l`

## Synopsis

> Cerca file e directory con opzioni di filtro avanzate.

## Description

```text
* Trova file con Find-Item -> l
        * Ricerca rapida multi-thread: utilizza l'elaborazione IO parallela e
              asincrona con grado massimo di parallelismo configurabile
              (predefinito in base ai core della CPU) per una scansione efficiente di file e directory.
        * Abbinamento avanzato di pattern: Supporta caratteri jolly (*, ?), pattern ricorsivi
              come **, e strutture di percorso complesse per query precise su file e directory.
              **/nomefile ricorrerà solo fino a quando il nomefile non viene trovato. più di questi
              pattern sono consentiti, purché siano preceduti da un nomefile o
              nomedirectory da abbinare.
              Questo parser di pattern ha la potenza di Resolve-Path ma ha funzionalità
              di ricorsione, e supporta solo * e ? come caratteri jolly,
              prevenendo bug con percorsi che contengono parentesi [ ], eliminando
              la necessità del parametro -LiteralPath, mantenendo l'integrità
              per sezioni di percorso senza caratteri jolly, a differenza di un abbinamento con caratteri jolly sull'intero percorso completo.
        * Ricerca avanzata del contenuto: Integrazione completa di Select-String
              con pattern di espressioni regolari all'interno del contenuto dei file utilizzando il
              parametro -Content.
            * Ottimizzazione per file grandi: Gestisce file estremamente grandi con buffer
                  sovrapposti intelligenti e allocazione heap minima
            * Opzioni di corrispondenza multiple: Trova tutte le corrispondenze per riga (-AllMatches) o
                  solo la prima corrispondenza per file (-List)
            * Controllo della distinzione tra maiuscole e minuscole: Corrispondenza con distinzione tra maiuscole e minuscole (-CaseSensitive)
                  con opzioni specifiche per cultura (-Culture)
            * Acquisizione del contesto: Mostra righe prima e dopo le corrispondenze (-Context) per
                  una migliore comprensione
            *Corrispondenza inversa: Trova file che non contengono il pattern (-NotMatch)
            * Formati di output: Output stringa grezzo (-Raw), risposta booleana silenziosa (-Quiet),
                  o oggetti MatchInfo completi
            * Tipi di pattern: Espressioni regolari (predefinito) o corrispondenza stringa letterale
                  semplice (-SimpleMatch)
            * Supporto encoding: Specifica l'encoding del file (-Encoding) per un'elaborazione accurata del testo
        * Flessibilità del tipo di percorso: Gestisce percorsi relativi, assoluti, UNC, radicati e
              flussi di dati alternativi NTFS (ADS) con ricerca opzionale del contenuto nei flussi.
        * Supporto multi-unità: Cerca su tutte le unità con -AllDrives o unità specifiche
              tramite -SearchDrives, inclusi dischi ottici se specificato.
        * Filtro di directory e file: Opzioni per cercare solo directory (-Directory),
              sia file che directory (-FilesAndDirectories), o file con corrispondenza del contenuto.
        * Esclusione e limiti: Escludi pattern con -Exclude, imposta profondità massima di ricorsione
              (-MaxRecursionDepth), limiti di dimensione file (-MaxFileSize, -MinFileSize) e filtri
              data modifica (-ModifiedAfter, -ModifiedBefore).
        * Personalizzazione output: Supporta PassThru per oggetti FileInfo/DirectoryInfo,
              percorsi relativi, collegamenti ipertestuali in modalità presidiata, o percorsi semplici in modalità non presidiata
              (usa -NoLinks in caso di problemi per forzare la modalità non presidiata).
        * Ottimizzazioni delle prestazioni: Salta i file non di testo per impostazione predefinita nella ricerca del contenuto
              (sostituisci con -IncludeNonTextFileMatching), gestisce percorsi lunghi (>260 caratteri),
              e segue symlink/junction.
        * Funzionalità di sicurezza: Supporto timeout (-TimeoutSeconds), ignora elementi inaccessibili,
              salta gli attributi di sistema per impostazione predefinita e previene cicli infiniti con tracciamento dei nodi visitati.

        * Le categorie valide per il parametro -Category sono: Immagini, Video, Musica, Documenti, Fogli di calcolo, Presentazioni, Archivi, Installatori, Eseguibili, Database, File di progettazione, Ebook, Sottotitoli, Font, File email, Modelli 3D, Risorse di gioco, File medici, File finanziari, File legali, Codice sorgente, Script, Markup e dati, Configurazione, Log, File di testo, File web, Testi di musica e accordi, Scrittura creativa, Ricette, File di ricerca
```
## Syntax

```powershell
Find-Item [[-Name] <String[]>] [[-RelativeBasePath] <String>] [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-Directory] [-DriveLetter <Char[]>] [-Exclude <String[]>] [-FilesAndDirectories] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-Input <Object>] [-LimitToRoot] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-ModifiedBefore <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-NoLinks] [-NoRecurse] [-PassThru] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [<CommonParameters>]

Find-Item [[-Content] <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>] [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Quiet] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | — | Nome del file o criterio di ricerca. Il valore predefinito è '*' 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | Nome del file o criterio di ricerca. Il valore predefinito è '*' 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | — | Modello di espressione regolare per cercare all'interno del contenuto *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 2 | — | Percorso base per la risoluzione dei percorsi relativi nell'output |
| `-Category` | String[] | — | — | Named | — | The `-Category` parameter. |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Grado massimo di parallelismo per le attività di directory |
| `-TimeoutSeconds` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Opzionale: timeout di annullamento in secondi |
| `-AllDrives` | SwitchParameter | — | — | Named | `False` | Cerca in tutte le unità disponibili |
| `-Directory` | SwitchParameter | — | — | Named | `False` | Cerca solo le directory |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | `False` | Includi sia file che directory |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Restituisci gli elementi corrispondenti come oggetti |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | `False` | Includi flussi di dati alternativi nei risultati di ricerca |
| `-NoRecurse` | SwitchParameter | — | — | Named | `False` | Non ricorrere nelle sottodirectory |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | `False` | Segue i collegamenti simbolici e i junction durante l'attraversamento delle directory |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | `False` | Includi unità disco ottiche |
| `-SearchDrives` | String[] | — | — | Named | — | Facoltativo: cerca unità specifiche |
| `-DriveLetter` | Char[] | — | — | Named | — | Facoltativo: cerca unità specifiche |
| `-Root` | String[] | — | — | Named | — | Facoltativo: cercare directory specifiche |
| `-LimitToRoot` | SwitchParameter | — | — | Named | `False` | Impone la ricerca solo nelle directory radice rimuovendo i componenti della directory dagli input di Nome |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | `False` | Includi i file non di testo nella ricerca del contenuto dei file |
| `-NoLinks` | SwitchParameter | — | — | Named | `False` | Forza la modalità non presidiata e non genererà collegamenti |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `PlatformDefault` | Ottiene o imposta la distinzione tra maiuscole e minuscole per file e directory |
| `-SearchADSContent` | SwitchParameter | — | — | Named | `False` | Quando impostato, esegue la ricerca del contenuto all'interno dei flussi di dati alternativi (ADS). Quando non impostato, mostra le informazioni sui file ADS senza cercarne il contenuto. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Profondità massima di ricorsione per l'attraversamento delle directory. 0 significa illimitato. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Profondità massima di ricorsione per continuare la ricerca verso l'alto nell'albero per ricerche relative, finché non vengono trovati elementi. 0 significa disabilitato. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Dimensione massima del file in byte da includere nei risultati. 0 significa illimitato. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Dimensione minima del file in byte da includere nei risultati. 0 significa nessun minimo. |
| `-ModifiedAfter` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Includi solo i file modificati dopo questa data/ora (UTC). |
| `-ModifiedBefore` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Includi solo i file modificati prima di questa data/ora (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `None` | Attributi del file da ignorare (ad es. Sistema, Nascosto o Nessuno). |
| `-Exclude` | String[] | — | — | Named | — | Escludi file o directory che corrispondono a questi modelli wildcard (es., *.tmp, *\bin\*). |
| `-AllMatches` | SwitchParameter | — | — | Named | `False` | Indica che il cmdlet cerca più di una corrispondenza in ogni riga di testo. Senza questo parametro, Select-String trova solo la prima corrispondenza in ogni riga di testo. *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | `False` | Indica che le corrispondenze del cmdlet sono sensibili alle maiuscole/minuscole. Per impostazione predefinita, le corrispondenze non sono sensibili alle maiuscole/minuscole. *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | Acquisisce il numero specificato di righe prima e dopo la riga che corrisponde al criterio. *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Specifica un nome di lingua da abbinare al modello specificato. Il parametro Culture deve essere utilizzato con il parametro SimpleMatch. Il comportamento predefinito utilizza la lingua del runspace PowerShell corrente (sessione). *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | — | Specifica il tipo di codifica per il file di destinazione. Supporta valori compatibili con Select-String e codifiche .NET estese. *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | `False` | Solo la prima istanza di testo corrispondente viene restituita da ogni file di input. Questo è il modo più efficiente per recuperare un elenco di file il cui contenuto corrisponde all'espressione regolare. *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | `False` | Disabilita l'evidenziazione delle stringhe corrispondenti nell'output. *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | `False` | Il parametro NotMatch trova il testo che non corrisponde al pattern specificato. *(Parameter set: )* |
| `-Quiet` | SwitchParameter | — | — | Named | `False` | Indica che il cmdlet restituisce una risposta semplice invece di un oggetto MatchInfo. Il valore restituito è $true se il modello viene trovato o $null se il modello non viene trovato. *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | `False` | Fa sì che il cmdlet restituisca solo le stringhe corrispondenti, anziché oggetti MatchInfo. Questo comportamento è il più simile a quello del comando Unix grep o del comando Windows findstr.exe. *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | `False` | Indica che il cmdlet utilizza una corrispondenza semplice anziché una corrispondenza tramite espressione regolare. In una corrispondenza semplice, Select-String cerca l'input per il testo nel parametro Pattern. Non interpreta il valore del parametro Pattern come un'istruzione di espressione regolare. *(Parameter set: )* |

## Examples

### Example 1

```powershell
Find-Item -Content "translation"

# Short form:
l -mc translation
```

Trova i file che contengono una parola specifica
Cerca in tutti i file nella directory corrente e nelle sottodirectory che contengono la parola "traduzione".

### Example 2

```powershell
Find-Item "*.js" "Version == `"\d\d?\.\d\d?\.\d\d?`""

# Short form:
l *.js "Version == `"\d\d?\.\d\d?\.\d\d?`""
```

Trova file JavaScript con una stringa di versione
Cerca file JavaScript che contengono una stringa di versione nel formato "Versione == `x.y.z`".

### Example 3

```powershell
Find-Item -Directory

# Short form:
l -dir
```

Elenca tutte le directory
Trova tutte le directory nella directory corrente e nelle sue sottodirectory.

### Example 4

```powershell
Find-Item ".\*.xml" -PassThru | % FullName

# Short form:
l *.xml -pt | % FullName
```

Trova i file XML e passa gli oggetti
Cerca tutti i file .xml e passa i risultati come oggetti attraverso la pipeline.

### Example 5

```powershell
Find-Item -IncludeAlternateFileStreams

# Short form:
l -ads
```

Includi flussi di dati alternativi
Cerca tutti i file e includi i loro flussi di dati alternativi nei risultati.

### Example 6

```powershell
Find-Item "*.pdf" -AllDrives

# Short form:
l *.pdf -alldrives
```

Cerca su tutte le unità
Cerca tutti i file PDF su tutte le unità disponibili.

### Example 7

```powershell
Find-Item "*.log" -TimeoutSeconds 300 -MaxDegreeOfParallelism 4

# Short form:
l *.log -maxseconds 300 -threads 4
```

Timeout e parallelismo personalizzati
Cerca file di log con un timeout di 5 minuti e parallelismo limitato.

### Example 8

```powershell
Get-ChildItem -Path "C:\Logs" | Find-Item -Content "error"

# Short form:
ls C:\Logs | l -matchcontent "error"
```

Input pipeline
Passa i percorsi dei file da Get-ChildItem per cercare file che contengono "error".

### Example 9

```powershell
Find-Item "*.txt" -MaxRecursionDepth 2

# Short form:
l *.txt -maxdepth 2
```

Limita la profondità di ricorsione
Cerca file di testo ma limita la ricorsione a 2 livelli di directory.

### Example 10

```powershell
Find-Item -MinFileSize 1048576 -MaxFileSize 10485760

# Short form:
l -minsize 1048576 -maxsize 10485760
```

Filtra per dimensione file
Trova i file più grandi di 1 MB ma più piccoli di 10 MB.

### Example 11

```powershell
Find-Item -ModifiedAfter "2025-01-01"

# Short form:
l -after "2025-01-01"
```

Filtra per data di modifica
Trova file modificati dopo il 1° gennaio 2025.

### Example 12

```powershell
Find-Item -Exclude "*.tmp", "*\bin\*"

# Short form:
l -skiplike "*.tmp", "*\bin\*"
```

Escludi pattern specifici
Cerca tutti i file ma escludi i file temporanei e le directory bin.

### Example 13

```powershell
Find-Item "*.docx" -SearchDrives "C:\", "D:\"

# Short form:
l *.docx -drives C:\, D:\
```

Ricerca su unità specifiche
Cerca file .docx solo sulle unità C: e D:.

### Example 14

```powershell
Find-Item -Content "Error" -CaseSensitive

# Short form:
l -mc "Error" -CaseSensitive
```

Ricerca contenuti con distinzione tra maiuscole e minuscole
Cerca file che contengono "Errore" (con distinzione tra maiuscole e minuscole) nel loro contenuto.

### Example 15

```powershell
Find-Item -IncludeAlternateFileStreams -SearchADSContent -Content "secret"

# Short form:
l -ads -sads -mc "secret"
```

Cerca contenuto di flussi di dati alternativi
Cerca file con flussi di dati alternativi contenenti "secret".

### Example 16

```powershell
Find-Item "*.ps1" -Content "function" -AllMatches

# Short form:
l *.ps1 -mc "function" -AllMatches
```

Trova tutte le corrispondenze per riga
Cerca tutte le occorrenze di "function" in ogni riga, non solo la prima corrispondenza.

### Example 17

```powershell
Find-Item "*.log" -Content "error" -Context 2,3

# Short form:
l *.log -mc "error" -Context 2,3
```

Mostra contesto intorno alle corrispondenze
Visualizza 2 righe prima e 3 righe dopo ogni corrispondenza per una migliore comprensione.

### Example 18

```powershell
Find-Item "*.txt" -Content "TODO:.*" -Raw

# Short form:
l *.txt -mc "TODO:.*" -Raw
```

Ottieni solo stringhe corrispondenti
Restituisce solo i testi delle stringhe corrispondenti invece degli oggetti di corrispondenza completi.

### Example 19

```powershell
Find-Item "*.config" -Content "database" -Quiet

# Short form:
l *.config -mc "database" -Quiet
```

Controllo booleano semplice
Restituisce vero/falso invece dei dettagli di corrispondenza per verificare se il pattern esiste.

### Example 20

```powershell
Find-Item "*.cs" -Content "class.*Controller" -List

# Short form:
l *.cs -mc "class.*Controller" -List
```

Trova solo la prima corrispondenza per file
Fermati alla prima corrispondenza in ogni file per un elenco efficiente.

### Example 21

```powershell
Find-Item "*.txt" -Content "$variable[0]" -SimpleMatch

# Short form:
l *.txt -mc "$variable[0]" -SimpleMatch
```

Corrispondenza stringa letterale
Cerca testo esatto senza interpretazione regex usando SimpleMatch.

### Example 22

```powershell
Find-Item "*.js" -Content "console\.log" -NotMatch

# Short form:
l *.js -mc "console\.log" -NotMatch
```

Trova file che NON contengono il modello
Usa NotMatch per trovare file che non contengono il modello specificato.

### Example 23

```powershell
Find-Item "*.txt" -Content "café" -Encoding UTF8

# Short form:
l *.txt -mc "café" -Encoding UTF8
```

Specifica la codifica del file
Cerca file con una codifica specifica per un'elaborazione accurata del testo.

### Example 24

```powershell
Find-Item "*.txt" -Content "Müller" -SimpleMatch -Culture "de-DE"

# Short form:
l *.txt -mc "Müller" -SimpleMatch -Culture "de-DE"
```

Confronto di testo culturale
Utilizza la corrispondenza specifica per la cultura con SimpleMatch per il testo internazionale.

### Example 25

```powershell
Find-Item "*.log" -Content "exception" -MinFileSize 1024 -ModifiedAfter "2025-01-01" -MaxRecursionDepth 3

# Short form:
l *.log -mc "exception" -minsize 1024 -after "2025-01-01" -maxdepth 3
```

Ricerca di contenuti complessi con filtri file
Combina filtri per dimensione, data e contenuto del file per ricerche precise.

## Parameter Details

### `-Name <String[]>`

> Nome del file o criterio di ricerca. Il valore predefinito è '*'

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

> Nome del file o criterio di ricerca. Il valore predefinito è '*'

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

> Modello di espressione regolare per cercare all'interno del contenuto

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

> Percorso base per la risoluzione dei percorsi relativi nell'output

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

> Grado massimo di parallelismo per le attività di directory

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

> Opzionale: timeout di annullamento in secondi

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

> Cerca in tutte le unità disponibili

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

> Cerca solo le directory

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

> Includi sia file che directory

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

> Restituisci gli elementi corrispondenti come oggetti

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

> Includi flussi di dati alternativi nei risultati di ricerca

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

> Non ricorrere nelle sottodirectory

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

> Segue i collegamenti simbolici e i junction durante l'attraversamento delle directory

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

> Includi unità disco ottiche

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

> Facoltativo: cerca unità specifiche

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

> Facoltativo: cerca unità specifiche

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

> Facoltativo: cercare directory specifiche

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

> Impone la ricerca solo nelle directory radice rimuovendo i componenti della directory dagli input di Nome

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

> Includi i file non di testo nella ricerca del contenuto dei file

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

> Forza la modalità non presidiata e non genererà collegamenti

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

> Ottiene o imposta la distinzione tra maiuscole e minuscole per file e directory

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

> Quando impostato, esegue la ricerca del contenuto all'interno dei flussi di dati alternativi (ADS). Quando non impostato, mostra le informazioni sui file ADS senza cercarne il contenuto.

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

> Profondità massima di ricorsione per l'attraversamento delle directory. 0 significa illimitato.

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

> Profondità massima di ricorsione per continuare la ricerca verso l'alto nell'albero per ricerche relative, finché non vengono trovati elementi. 0 significa disabilitato.

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

> Dimensione massima del file in byte da includere nei risultati. 0 significa illimitato.

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

> Dimensione minima del file in byte da includere nei risultati. 0 significa nessun minimo.

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

> Includi solo i file modificati dopo questa data/ora (UTC).

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

> Includi solo i file modificati prima di questa data/ora (UTC).

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

> Attributi del file da ignorare (ad es. Sistema, Nascosto o Nessuno).

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

> Escludi file o directory che corrispondono a questi modelli wildcard (es., *.tmp, *\bin\*).

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

> Indica che il cmdlet cerca più di una corrispondenza in ogni riga di testo. Senza questo parametro, Select-String trova solo la prima corrispondenza in ogni riga di testo.

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

> Indica che le corrispondenze del cmdlet sono sensibili alle maiuscole/minuscole. Per impostazione predefinita, le corrispondenze non sono sensibili alle maiuscole/minuscole.

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

> Acquisisce il numero specificato di righe prima e dopo la riga che corrisponde al criterio.

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

> Specifica un nome di lingua da abbinare al modello specificato. Il parametro Culture deve essere utilizzato con il parametro SimpleMatch. Il comportamento predefinito utilizza la lingua del runspace PowerShell corrente (sessione).

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

> Specifica il tipo di codifica per il file di destinazione. Supporta valori compatibili con Select-String e codifiche .NET estese.

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

> Solo la prima istanza di testo corrispondente viene restituita da ogni file di input. Questo è il modo più efficiente per recuperare un elenco di file il cui contenuto corrisponde all'espressione regolare.

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

> Disabilita l'evidenziazione delle stringhe corrispondenti nell'output.

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

> Il parametro NotMatch trova il testo che non corrisponde al pattern specificato.

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

> Indica che il cmdlet restituisce una risposta semplice invece di un oggetto MatchInfo. Il valore restituito è $true se il modello viene trovato o $null se il modello non viene trovato.

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

> Fa sì che il cmdlet restituisca solo le stringhe corrispondenti, anziché oggetti MatchInfo. Questo comportamento è il più simile a quello del comando Unix grep o del comando Windows findstr.exe.

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

> Indica che il cmdlet utilizza una corrispondenza semplice anziché una corrispondenza tramite espressione regolare. In una corrispondenza semplice, Select-String cerca l'input per il testo nel parametro Pattern. Non interpreta il valore del parametro Pattern come un'istruzione di espressione regolare.

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

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Find-DuplicateFiles.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Remove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Rename-InProject.md)
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Write-TextFileAtomic.md)
