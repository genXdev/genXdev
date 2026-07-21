# Start-RoboCopy

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `xc`, `rc`

## Synopsis

> Fornisce un wrapper PowerShell per l'utilità Robust Copy (RoboCopy) di Microsoft.

## Description

Wrapper completo per l'utilità della riga di comando RoboCopy che offre
funzionalità robuste di copia di file e directory. Questa funzione espone
l'ampio set di funzionalità di RoboCopy attraverso parametri compatibili con
PowerShell, mantenendo gran parte della sua potente funzionalità.

Caratteristiche principali:
- Sincronizzazione delle directory con opzioni mirror
- Supporto per percorsi di file molto lunghi (>256 caratteri)
- Conservazione delle impostazioni di sicurezza
- Gestione avanzata degli attributi dei file
- Gestione di collegamenti simbolici e punti di giunzione
- Modalità di monitoraggio per sincronizzazione continua
- Ottimizzazione delle prestazioni per file di grandi dimensioni
- Supporto per la compressione di rete
- Modalità di recupero per dispositivi con errori

## Syntax

```powershell
Start-RoboCopy -Source <String> [[-DestinationDirectory] <String>] [[-Files] <String[]>] [[-Override] <String>] [-AttributeExcludeFilter <String>] [-AttributeIncludeFilter <String>] [-CompressibleContent] [-CopyOnlyDirectoryTreeStructureAndEmptyFiles] [-CopySymbolicLinksAsLinks] [-ExactTimestamps] [-FileExcludeFilter <String[]>] [-Force] [-IncludeSecurity] [-LargeFiles] [-LogAllFileNames] [-LogDirectoryNames] [-LogfileOverwrite] [-LogFilePath <String>] [-MaxFileAge <Int32>] [-MaxFileSize <Int32>] [-MaxLastAccessAge <Int32>] [-MinFileAge <Int32>] [-MinFileSize <Int32>] [-MinLastAccessAge <Int32>] [-Mirror] [-MonitorMode] [-MonitorModeRunHoursFrom <Int32>] [-MonitorModeRunHoursUntil <Int32>] [-MonitorModeThresholdMinutes <Int32>] [-MonitorModeThresholdNrOfChanges <Int32>] [-Move] [-MultiThreaded] [-RecoveryMode] [-RemoveAttributesAfterCopy <String>] [-ResetArchiveAttributeAfterSelection] [-SetAttributesAfterCopy <String>] [-SkipAllSymbolicLinks] [-SkipFilesWithoutArchiveAttribute] [-SkipSymbolicFileLinks] [-Unicode] [<CommonParameters>]

Start-RoboCopy [-SkipDirectories] [<CommonParameters>]

Start-RoboCopy [-CopyJunctionsAsJunctons] [-CopyOnlyDirectoryTreeStructure] [-DirectoryExcludeFilter <String[]>] [-MaxSubDirTreeLevelDepth <Int32>] [-SkipEmptyDirectories] [-SkipJunctions] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Source` | String | ✅ | — | 0 | — | La directory, il percorso del file o la directory+maschera di ricerca |
| `-DestinationDirectory` | String | — | — | 1 | `".$([System.IO.Path]::DirectorySeparatorChar)"` | La directory di destinazione in cui posizionare i file e le directory copiati.
            Se questa directory non esiste ancora, verranno create tutte le directory mancanti.
            Valore predefinito = ".\" |
| `-Files` | String[] | — | — | 2 | `@()` | Maschera di ricerca opzionale per selezionare i file da copiare.
            Valore predefinito = '*' 🌐 *Supports wildcards* |
| `-Mirror` | SwitchParameter | — | — | Named | — | Sincronizza il contenuto delle directory specificate, eliminerà anche eventuali file e directory nella destinazione che non esistono nell'origine |
| `-Move` | SwitchParameter | — | — | Named | — | Sposterà invece di copiare tutti i file dalla destinazione all'origine |
| `-IncludeSecurity` | SwitchParameter | — | — | Named | — | Copierà anche la proprietà, i descrittori di sicurezza e le informazioni di controllo dei file e delle directory |
| `-SkipDirectories` | SwitchParameter | — | — | Named | — | Copia solo i file dall'origine e salta le sottodirectory (nessuna ricorsione) *(Parameter set: )* |
| `-SkipEmptyDirectories` | SwitchParameter | — | — | Named | — | Non copia le directory se risulterebbero vuote *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructure` | SwitchParameter | — | — | Named | — | Crea solo la struttura di directory *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructureAndEmptyFiles` | SwitchParameter | — | — | Named | — | Crea albero delle directory e file di lunghezza zero solo |
| `-SkipAllSymbolicLinks` | SwitchParameter | — | — | Named | — | Non copiare collegamenti simbolici, junction o il contenuto a cui puntano |
| `-SkipSymbolicFileLinks` | SwitchParameter | — | — | Named | — | Non copiare i collegamenti ai file simbolici ma segui i junction delle directory |
| `-CopySymbolicLinksAsLinks` | SwitchParameter | — | — | Named | — | Invece di copiare il contenuto a cui puntano i collegamenti simbolici, copia i collegamenti stessi |
| `-SkipJunctions` | SwitchParameter | — | — | Named | — | Non copiare i junction di directory (collegamento simbolico per una cartella) né il contenuto a cui puntano *(Parameter set: )* |
| `-CopyJunctionsAsJunctons` | SwitchParameter | — | — | Named | — | Invece di copiare il contenuto a cui puntano i junction, copia i junction stessi *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Copierà tutti i file anche se sono più vecchi di quelli nella destinazione |
| `-SkipFilesWithoutArchiveAttribute` | SwitchParameter | — | — | Named | — | Copia solo i file che hanno l'attributo di archivio impostato |
| `-ResetArchiveAttributeAfterSelection` | SwitchParameter | — | — | Named | — | Oltre a copiare solo i file che hanno l'attributo di archivio impostato, reimposta quindi questo attributo sull'origine |
| `-FileExcludeFilter` | String[] | — | — | Named | `@()` | Escludi qualsiasi file che corrisponda a uno di questi nomi/percorsi/wildcard 🌐 *Supports wildcards* |
| `-DirectoryExcludeFilter` | String[] | — | — | Named | `@()` | Esclude tutte le directory che corrispondono a uno di questi nomi/percorsi/caratteri jolly *(Parameter set: )* 🌐 *Supports wildcards* |
| `-AttributeIncludeFilter` | String | — | — | Named | — | Copia solo i file che hanno tutti questi attributi impostati [RASHCNETO] |
| `-AttributeExcludeFilter` | String | — | — | Named | — | Escludi file che hanno uno qualsiasi di questi attributi impostati [RASHCNETO] |
| `-SetAttributesAfterCopy` | String | — | — | Named | — | Applicherà gli attributi specificati ai file copiati [RASHCNETO] |
| `-RemoveAttributesAfterCopy` | String | — | — | Named | — | Rimuoverà gli attributi specificati dai file copiati [RASHCNETO] |
| `-MaxSubDirTreeLevelDepth` | Int32 | — | — | Named | `-1` | Copia solo i primi n livelli della struttura di directory di origine *(Parameter set: )* |
| `-MinFileSize` | Int32 | — | — | Named | `-1` | Ignora i file la cui dimensione è inferiore a n byte. |
| `-MaxFileSize` | Int32 | — | — | Named | `-1` | Ignora i file più grandi di n byte |
| `-MinFileAge` | Int32 | — | — | Named | `-1` | Ignora i file che non hanno almeno: n giorni oppure creati prima della data n (se n < 1900 allora n = n giorni, altrimenti n = data AAAAMMGG) |
| `-MaxFileAge` | Int32 | — | — | Named | `-1` | Salta i file più vecchi di: n giorni O creati dopo la data n (se n < 1900 allora n = n giorni, altrimenti n = data AAAAMMGG) |
| `-MinLastAccessAge` | Int32 | — | — | Named | `-1` | Salta i file a cui si è avuto accesso negli ultimi: n giorni OPPURE prima della data n (se n < 1900, n = n giorni, altrimenti n = data in formato AAAAMMGG) |
| `-MaxLastAccessAge` | Int32 | — | — | Named | `-1` | Ignora i file che non sono stati aperti in: n giorni OPPURE dopo n data (se n < 1900 allora n = n giorni, altrimenti n = data AAAAMMGG) |
| `-RecoveryMode` | SwitchParameter | — | — | Named | — | Verrà brevemente sospeso e riprovato quando si verificano errori di I/O durante la copia |
| `-MonitorMode` | SwitchParameter | — | — | Named | — | Rimarrà attivo dopo la copia e copierà le modifiche aggiuntive dopo una soglia predefinita di 10 minuti |
| `-MonitorModeThresholdMinutes` | Int32 | — | — | Named | `-1` | Esegui di nuovo tra n minuti, se modificato |
| `-MonitorModeThresholdNrOfChanges` | Int32 | — | — | Named | `-1` | Esegui di nuovo quando vengono rilevate più di n modifiche |
| `-MonitorModeRunHoursFrom` | Int32 | — | — | Named | `-1` | Ore di esecuzione - momenti in cui possono essere avviate nuove copie, ora di inizio, intervallo 0000:2359 |
| `-MonitorModeRunHoursUntil` | Int32 | — | — | Named | `-1` | Ore di esecuzione - momenti in cui possono essere avviate nuove copie, ora di fine, intervallo 0000:2359 |
| `-LogFilePath` | String | — | — | Named | — | Se specificato, la registrazione verrà effettuata anche nel file specificato |
| `-LogfileOverwrite` | SwitchParameter | — | — | Named | — | Non aggiungere al file di log specificato, ma sovrascriverlo invece |
| `-LogDirectoryNames` | SwitchParameter | — | — | Named | — | Includi tutti i nomi delle directory scansionate nell'output |
| `-LogAllFileNames` | SwitchParameter | — | — | Named | — | Includere tutti i nomi dei file scansionati nell'output, anche quelli saltati |
| `-Unicode` | SwitchParameter | — | — | Named | — | Stato di uscita come UNICODE |
| `-LargeFiles` | SwitchParameter | — | — | Named | — | Abilita l'ottimizzazione per la copia di file di grandi dimensioni |
| `-MultiThreaded` | SwitchParameter | — | — | Named | — | Ottimizza le prestazioni eseguendo la copia multithread |
| `-CompressibleContent` | SwitchParameter | — | — | Named | — | Se possibile, utilizza la compressione durante la copia dei file tra server per risparmiare larghezza di banda e tempo |
| `-ExactTimestamps` | SwitchParameter | — | — | Named | — | Se impostato, utilizzerà la corrispondenza del timestamp in millisecondi invece della tolleranza predefinita di 2 secondi |
| `-Override` | String | — | — 🌐 Remaining | 3 | — | Sostituisce, Rimuove o Aggiunge qualsiasi parametro robocopy specificato.

Utilizzo:

Aggiungere o sostituire un parametro:

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

Rimuovere un parametro:

    -Override -/Switch

Override multipli:

    -Override "/ReplaceThisSwitchWithValue:'SomeValue' -/RemoveThisSwitch /AddThisSwitch" |

## Examples

### ########################################################################Mirror a directory with security settings Start-RoboCopy -Source "C:\Projects" -DestinationDirectory "D:\Backup" `     -Mirror -IncludeSecurity

```powershell
########################################################################Mirror a directory with security settings
Start-RoboCopy -Source "C:\Projects" -DestinationDirectory "D:\Backup" `
    -Mirror -IncludeSecurity
```

### ########################################################################Monitor and sync changes every 10 minutes Start-RoboCopy -Source "C:\Documents" -DestinationDirectory "\\server\share" `     -MonitorMode -MonitorModeThresholdMinutes 10

```powershell
########################################################################Monitor and sync changes every 10 minutes
Start-RoboCopy -Source "C:\Documents" -DestinationDirectory "\\server\share" `
    -MonitorMode -MonitorModeThresholdMinutes 10
```

## Parameter Details

### `-Source <String>`

> La directory, il percorso del file o la directory+maschera di ricerca

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DestinationDirectory <String>`

> La directory di destinazione in cui posizionare i file e le directory copiati.
            Se questa directory non esiste ancora, verranno create tutte le directory mancanti.
            Valore predefinito = ".\"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `".$([System.IO.Path]::DirectorySeparatorChar)"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Files <String[]>`

> Maschera di ricerca opzionale per selezionare i file da copiare.
            Valore predefinito = '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Mirror`

> Sincronizza il contenuto delle directory specificate, eliminerà anche eventuali file e directory nella destinazione che non esistono nell'origine

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Move`

> Sposterà invece di copiare tutti i file dalla destinazione all'origine

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeSecurity`

> Copierà anche la proprietà, i descrittori di sicurezza e le informazioni di controllo dei file e delle directory

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipDirectories`

> Copia solo i file dall'origine e salta le sottodirectory (nessuna ricorsione)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Default |

<hr/>
### `-SkipEmptyDirectories`

> Non copia le directory se risulterebbero vuote

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-CopyOnlyDirectoryTreeStructure`

> Crea solo la struttura di directory

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-CopyOnlyDirectoryTreeStructureAndEmptyFiles`

> Crea albero delle directory e file di lunghezza zero solo

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipAllSymbolicLinks`

> Non copiare collegamenti simbolici, junction o il contenuto a cui puntano

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSymbolicFileLinks`

> Non copiare i collegamenti ai file simbolici ma segui i junction delle directory

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CopySymbolicLinksAsLinks`

> Invece di copiare il contenuto a cui puntano i collegamenti simbolici, copia i collegamenti stessi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipJunctions`

> Non copiare i junction di directory (collegamento simbolico per una cartella) né il contenuto a cui puntano

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-CopyJunctionsAsJunctons`

> Invece di copiare il contenuto a cui puntano i junction, copia i junction stessi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-Force`

> Copierà tutti i file anche se sono più vecchi di quelli nella destinazione

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipFilesWithoutArchiveAttribute`

> Copia solo i file che hanno l'attributo di archivio impostato

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ResetArchiveAttributeAfterSelection`

> Oltre a copiare solo i file che hanno l'attributo di archivio impostato, reimposta quindi questo attributo sull'origine

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FileExcludeFilter <String[]>`

> Escludi qualsiasi file che corrisponda a uno di questi nomi/percorsi/wildcard

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-DirectoryExcludeFilter <String[]>`

> Esclude tutte le directory che corrispondono a uno di questi nomi/percorsi/caratteri jolly

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | SkipDirectories |

<hr/>
### `-AttributeIncludeFilter <String>`

> Copia solo i file che hanno tutti questi attributi impostati [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AttributeExcludeFilter <String>`

> Escludi file che hanno uno qualsiasi di questi attributi impostati [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetAttributesAfterCopy <String>`

> Applicherà gli attributi specificati ai file copiati [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RemoveAttributesAfterCopy <String>`

> Rimuoverà gli attributi specificati dai file copiati [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxSubDirTreeLevelDepth <Int32>`

> Copia solo i primi n livelli della struttura di directory di origine

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-MinFileSize <Int32>`

> Ignora i file la cui dimensione è inferiore a n byte.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxFileSize <Int32>`

> Ignora i file più grandi di n byte

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinFileAge <Int32>`

> Ignora i file che non hanno almeno: n giorni oppure creati prima della data n (se n < 1900 allora n = n giorni, altrimenti n = data AAAAMMGG)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxFileAge <Int32>`

> Salta i file più vecchi di: n giorni O creati dopo la data n (se n < 1900 allora n = n giorni, altrimenti n = data AAAAMMGG)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinLastAccessAge <Int32>`

> Salta i file a cui si è avuto accesso negli ultimi: n giorni OPPURE prima della data n (se n < 1900, n = n giorni, altrimenti n = data in formato AAAAMMGG)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxLastAccessAge <Int32>`

> Ignora i file che non sono stati aperti in: n giorni OPPURE dopo n data (se n < 1900 allora n = n giorni, altrimenti n = data AAAAMMGG)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RecoveryMode`

> Verrà brevemente sospeso e riprovato quando si verificano errori di I/O durante la copia

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorMode`

> Rimarrà attivo dopo la copia e copierà le modifiche aggiuntive dopo una soglia predefinita di 10 minuti

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeThresholdMinutes <Int32>`

> Esegui di nuovo tra n minuti, se modificato

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeThresholdNrOfChanges <Int32>`

> Esegui di nuovo quando vengono rilevate più di n modifiche

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeRunHoursFrom <Int32>`

> Ore di esecuzione - momenti in cui possono essere avviate nuove copie, ora di inizio, intervallo 0000:2359

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeRunHoursUntil <Int32>`

> Ore di esecuzione - momenti in cui possono essere avviate nuove copie, ora di fine, intervallo 0000:2359

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogFilePath <String>`

> Se specificato, la registrazione verrà effettuata anche nel file specificato

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogfileOverwrite`

> Non aggiungere al file di log specificato, ma sovrascriverlo invece

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogDirectoryNames`

> Includi tutti i nomi delle directory scansionate nell'output

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogAllFileNames`

> Includere tutti i nomi dei file scansionati nell'output, anche quelli saltati

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Unicode`

> Stato di uscita come UNICODE

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LargeFiles`

> Abilita l'ottimizzazione per la copia di file di grandi dimensioni

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MultiThreaded`

> Ottimizza le prestazioni eseguendo la copia multithread

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CompressibleContent`

> Se possibile, utilizza la compressione durante la copia dei file tra server per risparmiare larghezza di banda e tempo

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExactTimestamps`

> Se impostato, utilizzerà la corrispondenza del timestamp in millisecondi invece della tolleranza predefinita di 2 secondi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Override <String>`

> Sostituisce, Rimuove o Aggiunge qualsiasi parametro robocopy specificato.

Utilizzo:

Aggiungere o sostituire un parametro:

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

Rimuovere un parametro:

    -Override -/Switch

Override multipli:

    -Override "/ReplaceThisSwitchWithValue:'SomeValue' -/RemoveThisSwitch /AddThisSwitch"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

> This parameter accepts all remaining arguments.

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Find-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Find-Item.md)
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
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Write-TextFileAtomic.md)
